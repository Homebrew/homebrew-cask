class Imageoptim < Cask
  version 'latest'
  sha256 :no_check

  url 'https://imageoptim.com/ImageOptim.tbz2'
  appcast 'http://imageoptim.com/appcast.xml'
  homepage 'http://imageoptim.com/'

  app 'ImageOptim.app'
end
