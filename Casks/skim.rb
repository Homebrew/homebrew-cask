cask 'skim' do
  version '1.4.21'
  sha256 '7680a2747a0c9a18fab1dfc84da22b7bf8afec8fad7fb0f58d8c16e23ea3bcba'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: '0be5ee10e353d987d390f205b9c4fc13e2982f9ed954fcc2f23dd53e3c63798d'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
