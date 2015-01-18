cask :v1 => 'consul' do
  version '0.4.1'
  sha256 '957fe9ba27bbaf99539cd534db8ac8ec4c9fa1c6b3b4675d0c0eb3a7fbfb646c'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  homepage 'http://www.consul.io/'
  license :mpl

  binary 'consul'
end
