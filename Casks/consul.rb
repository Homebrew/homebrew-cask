cask 'consul' do
  version '0.6.4'
  sha256 '75422bbd26107cfc5dfa7bbb65c1d8540a5193796b5c6b272d8d70b094b26488'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '1583f51f8e4b3524aa5a0acb676e4d4bdbd25eb62637715a2e9a168ab7ce55a5'
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
