cask :v1 => 'consul' do
  version '0.5.2'
  sha256 '87be515d7dbab760a61a359626a734f738d46ece367f68422b7dec9197d9eeea'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
