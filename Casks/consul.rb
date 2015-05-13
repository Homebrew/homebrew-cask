cask :v1 => 'consul' do
  version '0.5.1'
  sha256 '06fef2ffc5a8ad8883213227efae5d1e0aa4192ccb772ec6086103a7a08fadf8'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  name 'Consul'
  homepage 'http://www.consul.io/'
  license :mpl

  binary 'consul'
end
