cask 'consul' do
  version '0.6.0'
  sha256 '29ddff01368458048731afa586cec5426c8033a914b43fc83d6442e0a522c114'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
