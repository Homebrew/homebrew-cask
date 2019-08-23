cask 'mblock' do
  version '5.1.0'
  sha256 '03de14bb9a2f2b8784b627ab1611aa04b7d8290fafa39115708891bf3c3178bf'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'https://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'com.makeblock.pkg.mblock'
end
