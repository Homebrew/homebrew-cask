cask 'pixelsnap' do
  version '2.3.1'
  sha256 'fae63990bbebf5306e7c873c825a022959f13e5fe726fc718e754e427007aa8b'

  url "https://updates.getpixelsnap.com/v#{version.major}/PixelSnap-#{version.major}-#{version}.dmg"
  appcast "https://updates.getpixelsnap.com/v#{version.major}/appcast.xml"
  name 'PixelSnap'
  homepage 'https://getpixelsnap.com/'

  auto_updates true

  app "PixelSnap #{version.major}.app"

  uninstall quit: 'pl.maketheweb.pixelsnap2'

  zap trash: [
               '~/Library/Application Support/PixelSnap',
               '~/Library/Caches/SentryCrash/PixelSnap 2',
               '~/Library/Caches/pl.maketheweb.pixelsnap2',
               '~/Library/Preferences/pl.maketheweb.pixelsnap2.plist',
             ]
end
