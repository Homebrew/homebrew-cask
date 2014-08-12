class Packer < Cask
  version '0.6.1'
  sha256 '1ab1cf76be8ab1b953f0e634c96f8a09a9d17eb3d180b120b9d19afff2a94cb4'

  url "https://dl.bintray.com/mitchellh/packer/#{version}_darwin_amd64.zip"
  homepage 'http://www.packer.io/'

  binary 'packer'
end
