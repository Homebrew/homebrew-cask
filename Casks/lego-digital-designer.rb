cask 'lego-digital-designer' do
  version '4.3.11'
  sha256 '48d32b97c1ee65ad18a1206a1bfe253a03565ca464bc4c0c6be4fe2b453d55e1'

  # lc-www-live-s.legocdn.com was verified as official when first introduced to the cask
  url "https://lc-www-live-s.legocdn.com/downloads/ldd2.0/installer/setupLDD-MAC-#{version.dots_to_underscores}.zip"
  name 'Lego Digital Designer'
  homepage 'http://ldd.lego.com/'

  pkg 'LDD.pkg'

  uninstall pkgutil: 'com.LEGO.LDD'
end
