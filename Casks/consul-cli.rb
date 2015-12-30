cask 'consul-cli' do
  version '0.1.0'
  sha256 '21cefb08d339b3d3d91a56b59c8cec123f3e5aeb98cfc5a9f3b1975ce0dbd935'

  url "https://github.com/CiscoCloud/consul-cli/releases/download/v#{version}/consul-cli_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/CiscoCloud/consul-cli/releases.atom',
          :sha256 => 'a89732b930e71d0167bea02d54873ac39c6c27eb762f355772fbd898e123d9f4'
  name 'Consul CLI'
  homepage 'https://github.com/CiscoCloud/consul-cli/wiki'
  license :apache

  binary "consul-cli_#{version}_darwin_amd64/consul-cli"
end
