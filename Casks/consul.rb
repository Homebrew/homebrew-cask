cask 'consul' do
  version '0.6.3'
  sha256 '6dff4ffc61d66aacd627a176737b8725624718a9e68cc81460a3df9b241c7932'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '5ac89b32dd4234f5a7af642046cf8b053e704559b522e11c4672550638e5fbda'
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
