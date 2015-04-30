cask :v1 => 'consul-template' do
  version '0.9.0'
  sha256 'ea054bb62a556ffa58bbad29aa17b370694ba7c49a7539195f9afeafbec16be1'

  url "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
