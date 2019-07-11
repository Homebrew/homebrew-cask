cask 'mblock' do
  version '5.1.0'
  sha256 '3543c2691422edb9213773fd92da5898a8f8cdc7c9b490d0c997c60209f97032'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'https://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'com.makeblock.pkg.mblock'
end
