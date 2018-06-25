cask 'consul-cli' do
  version '0.3.1'
  sha256 '245915c510547e37ad19ee3eb934d9981e9e39cf4db55c89fff82ca13555bb1c'

  url "https://github.com/mantl/consul-cli/releases/download/v#{version}/consul-cli_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/mantl/consul-cli/releases.atom'
  name 'Consul CLI'
  homepage 'https://github.com/mantl/consul-cli/wiki'

  binary "consul-cli_#{version}_darwin_amd64/consul-cli"
end
