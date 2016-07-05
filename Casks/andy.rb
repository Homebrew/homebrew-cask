cask 'andy' do
  version '46.2.74.108'
  sha256 'ae811ed3bdb48835216c39a15f42fae9091a753c99cc047c9160b1558abf7d67'

  # andyroid.vonetize.com.edgesuite.net was verified as official when first introduced to the cask
  url "http://downloads.andyroid.net/installer/v46/Andy_v#{version}_112_OSX.dmg"
  name 'Andy'
  homepage 'http://www.andyroid.net/'
  license :commercial

  pkg "Andy_OSX_v#{version}.pkg"

  uninstall pkgutil: 'net.andyroid.andy.player.osx'
end
