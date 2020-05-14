cask 'cleanshot' do
  version '3.1.1'
  sha256 '22bcf71f6f2eadb7a02e106fb3de461e8c4418900c3b961012660bddf28a3e95'

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
