cask 'mblock' do
  version '5.2.0'
  sha256 '2ad10aa3223524b04cb2c5558cb6c6a7c345efdb2f2052b3795098d27ebde6e9'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'https://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'com.makeblock.pkg.mblock'
end
