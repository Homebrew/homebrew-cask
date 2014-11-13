cask :v1 => 'consul' do
  version '0.4.1'
  sha256 '957fe9ba27bbaf99539cd534db8ac8ec4c9fa1c6b3b4675d0c0eb3a7fbfb646c'

  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  homepage 'http://www.consul.io/'
  license :unknown

  binary 'consul'
end
