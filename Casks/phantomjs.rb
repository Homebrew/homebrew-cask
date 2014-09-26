class Phantomjs < Cask
  version '1.9.7'
  sha256 '72731f8ff68db17ecb5f6c78bf036adb429317b9bdbe69e2f5f60514fa7e4a6f'

  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-#{version}-macosx.zip"
  homepage 'http://phantomjs.org/'

  binary "phantomjs-#{version}-macosx/bin/phantomjs"
end
