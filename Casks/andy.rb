cask 'andy' do
  version '43'
  sha256 'ed55fb3a389a0afa62043fbdbe31e418aa96b789a743d987903a817fe4a8c75b'

  # andyroid.vonetize.com.edgesuite.net was verified as official when first introduced to the cask
  url "http://andyroid.vonetize.com.edgesuite.net/Mac/v#{version}/Andy_OSX_v#{version}.dmg"
  name 'Andy'
  homepage 'http://www.andyroid.net/'
  license :commercial

  pkg "Andy_OSX_v#{version}.pkg"

  uninstall pkgutil: 'net.andyroid.andy.player.osx'
end
