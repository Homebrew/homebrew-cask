class Consul < Cask
  version '0.4.0'
  sha256 '87a1b0f37e773d92c939ca7dd6a50985acc4fb4aaec31384756ef896aef4035b'

  url "https://dl.bintray.com/mitchellh/consul/#{version}_darwin_amd64.zip"
  homepage 'http://www.consul.io/'

  binary 'consul'
end
