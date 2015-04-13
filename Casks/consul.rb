cask :v1 => 'consul' do
  version '0.5.0'
  sha256 '24d9758c873e9124e0ce266f118078f87ba8d8363ab16c2e59a3cd197b77e964'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'http://www.consul.io/'
  license :mpl

  binary 'consul'
end
