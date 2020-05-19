cask 'skim' do
  version '1.5.9'
  sha256 'c68f49315727d81fefdaf365843131d46ced66584fd8b2dde2e82427fb0e5aaa'

  # downloads.sourceforge.net/skim-app/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'https://skim-app.sourceforge.io/skim.xml'
  name 'Skim'
  homepage 'https://skim-app.sourceforge.io/'

  auto_updates true

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: [
               '~/Library/Preferences/net.sourceforge.skim-app.skim.plist',
               '~/Library/Preferences/net.sourceforge.skim-app.skim.bookmarks.plist',
               '~/Library/Caches/net.sourceforge.skim-app.skim',
               '~/Library/Cookies/net.sourceforge.skim-app.skim.binarycookies',
             ]
end
