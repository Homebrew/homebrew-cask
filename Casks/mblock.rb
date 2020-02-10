cask 'mblock' do
  version '5.2.0'
  sha256 '28b0b050627e0a6d675e56aecd4b52f246c1dd69364411609799e44e2f9f775b'

  # dl.makeblock.com was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast 'https://www.mblock.cc/mblock-software/'
  name 'mBlock'
  homepage 'https://www.mblock.cc/'

  pkg "V#{version}.pkg"

  uninstall pkgutil: 'com.makeblock.pkg.mblock'
end
