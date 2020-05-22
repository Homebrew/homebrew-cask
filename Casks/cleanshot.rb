cask 'cleanshot' do
  version '3.2.1'
  sha256 '39974394ab6ae9130e670484668f319d612e1d500f3ca814b851de79c270f610'

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
