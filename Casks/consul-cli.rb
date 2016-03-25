cask 'consul-cli' do
  version '0.2.0'
  sha256 '2a048dceb47ec4df9ed6ddf26c945f8557790723a9194aee40ac6c5019c73a17'

  url "https://github.com/CiscoCloud/consul-cli/releases/download/v#{version}/consul-cli_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/CiscoCloud/consul-cli/releases.atom',
          checkpoint: 'c460875673bda22f2bd9251e51bdb2fbf08c07b8136df9e54fd0ba1f9ee192e9'
  name 'Consul CLI'
  homepage 'https://github.com/CiscoCloud/consul-cli/wiki'
  license :apache

  binary "consul-cli_#{version}_darwin_amd64/consul-cli"
end
