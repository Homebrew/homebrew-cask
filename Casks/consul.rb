cask 'consul' do
  version '0.6.3'
  sha256 '6dff4ffc61d66aacd627a176737b8725624718a9e68cc81460a3df9b241c7932'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
