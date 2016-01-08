cask 'consul' do
  version '0.6.1'
  sha256 '358654900772b3477497f4a5b5a841f2763dc3062bf29212606a97f5a7a675f3'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
