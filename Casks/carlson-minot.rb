cask 'carlson-minot' do
  version '2013.05-24'
  sha256 '1c41265f1a61e8594e9bcd702de0a4e7ed786394c91764e4d7495a6220a95b51'

  url "https://www.carlson-minot.com/downloads/arm-#{version}-arm-none-linux-gnueabi.osx.intelx86.bin.pkg"
  name 'Carlson-Minot Toolchain'
  homepage 'https://www.carlson-minot.com/'

  pkg "arm-#{version}-arm-none-linux-gnueabi.osx.intelx86.bin.pkg"

  uninstall pkgutil: 'com.carlson-minot.arm-*',
            delete:  '/usr/local/carlson-minot'

  caveats do
    files_in_usr_local
  end
end
