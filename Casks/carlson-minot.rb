class CarlsonMinot < Cask
  url 'http://www.carlson-minot.com/downloads/arm-2013.05-24-arm-none-linux-gnueabi.osx.intelx86.bin.pkg'
  homepage 'http://www.carlson-minot.com'
  version '2013.05.24'
  sha1 'ffb75ec0989e78eece54c62fbb07bd7c872c5b88'
  install 'arm-2013.05-24-arm-none-linux-gnueabi.osx.intelx86.bin.pkg'
  uninstall :pkgutil => 'com.carlson-minot.arm-2013.05-24-arm-none-linux-gnueabi.pkg', :files => [
    '/usr/local/carlson-minot' ]
end
