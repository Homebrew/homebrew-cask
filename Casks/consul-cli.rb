cask 'consul-cli' do
  version '0.1.1'
  sha256 'cf4eada7fcd1207f06d957e43db6dbbcacbd046e80cf57b1a3621f306f3ac7f8'

  url "https://github.com/CiscoCloud/consul-cli/releases/download/v#{version}/consul-cli_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/CiscoCloud/consul-cli/releases.atom',
          checkpoint: '0b6589d1ae99511a97a71d911ac44f99f979d69f89a34823727bbd586426af4b'
  name 'Consul CLI'
  homepage 'https://github.com/CiscoCloud/consul-cli/wiki'
  license :apache

  binary "consul-cli_#{version}_darwin_amd64/consul-cli"
end
