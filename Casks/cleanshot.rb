cask 'cleanshot' do
  version '3.1'
  sha256 'fc3da256df1919a07b54b3dc68d585a8dc91c280fca9a73520783f8396c33890'

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
