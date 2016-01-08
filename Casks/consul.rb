cask 'consul' do
  version '0.6.2'
  sha256 ''

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
