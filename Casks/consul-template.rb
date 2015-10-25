cask :v1 => 'consul-template' do
  version '0.10.0'
  sha256 '178e8e59d2e380440ac5582fb7f49c946ff931c1589ac85258d7dba82aefaabe'

  url "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
