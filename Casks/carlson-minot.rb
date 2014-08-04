class CarlsonMinot < Cask
  version '2013.05.24'
  sha256 '1c41265f1a61e8594e9bcd702de0a4e7ed786394c91764e4d7495a6220a95b51'

  url 'https://www.carlson-minot.com/downloads/arm-2013.05-24-arm-none-linux-gnueabi.osx.intelx86.bin.pkg'
  homepage 'http://www.carlson-minot.com'

  install 'arm-2013.05-24-arm-none-linux-gnueabi.osx.intelx86.bin.pkg'
  uninstall :pkgutil => 'com.carlson-minot.arm-2013.05-24-arm-none-linux-gnueabi.pkg', :files => [
    '/usr/local/carlson-minot' ]
  caveats do
    files_in_usr_local
  end
end
