cask 'skim' do
  version '1.5.8'
  sha256 '50ddbf004e318b5b50dadbf86ea38233b08036d69c0ef8cc05e63f5fe97bb3c5'

  # downloads.sourceforge.net/skim-app was verified as official when first introduced to the cask
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
