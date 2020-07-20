cask 'cleanshot' do
  version '3.3.1'
  sha256 '4a347cdd10be8ecdd614488999dfbf0e4d3dce8eb6df16bac62ae3b2aae839ae'

  url "https://updates.getcleanshot.com/v#{version.major}/CleanShot-X-#{version}.dmg"
  appcast "https://updates.getcleanshot.com/v#{version.major}/appcast.xml"
  name 'CleanShot'
  homepage 'https://getcleanshot.com/'

  auto_updates true

  app 'CleanShot X.app'

  uninstall quit: 'pl.maketheweb.cleanshotx'

  zap trash: [
               '~/Library/Application Support/CleanShot',
               '~/Library/Caches/SentryCrash/CleanShot X',
               '~/Library/Caches/pl.maketheweb.cleanshotx',
               '~/Library/Preferences/pl.maketheweb.cleanshotx.plist',
             ]
end
