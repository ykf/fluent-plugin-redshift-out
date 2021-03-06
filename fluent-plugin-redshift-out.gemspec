# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-redshift-out"
  gem.version       = File.read("VERSION").strip
  gem.authors       = ["Naohiro Sakuma"]
  gem.email         = ["nao.bear@gmail.com"]
  gem.description   = %q{Amazon Redshift output plugin for Fluentd}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/sakuma/fluent-plugin-redshift-out"
  gem.has_rdoc      = false

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "fluentd", "~> 0.10.0"
  gem.add_dependency "aws-sdk", "~> 1.60"
  gem.add_dependency "multi_json", "~> 1.10"
  gem.add_dependency "oj", "~> 2.11"
  gem.add_dependency "pg", "~> 0.17.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "flexmock", ">= 1.3.1"
end
