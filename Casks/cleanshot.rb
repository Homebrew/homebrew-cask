cask 'cleanshot' do
  version '3.1.2'
  sha256 '7b4cb7a9e2ed02f4f84795e8653bdc1d89543923958977669485c0e268add2e3'

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
