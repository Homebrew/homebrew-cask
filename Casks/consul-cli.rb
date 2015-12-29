cask 'consul-cli' do
  version '0.1.0'
  sha256 '21cefb08d339b3d3d91a56b59c8cec123f3e5aeb98cfc5a9f3b1975ce0dbd935'

  url 'https://github.com/CiscoCloud/consul-cli/releases/download/v0.1.0/consul-cli_0.1.0_darwin_amd64.tar.gz'
  name 'Consul CLI'
  homepage 'https://github.com/CiscoCloud/consul-cli/wiki'
  license :apache

  binary "consul-cli_#{version}_darwin_amd64/consul-cli"
end
