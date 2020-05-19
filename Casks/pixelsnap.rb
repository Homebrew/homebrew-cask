cask 'pixelsnap' do
  version '2.3.2'
  sha256 'b0f8d4fa3f3fddc83c9ce161ec242bc160612867cdfe9ddd739a1cda292198f4'

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
