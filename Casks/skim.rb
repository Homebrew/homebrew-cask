cask 'skim' do
  version '1.4.34'
  sha256 '17d34f48e7dd0480e91e3ebbd99bc29bcf6cdd2cdd5d72eadf2dca7e4ecb608f'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'https://skim-app.sourceforge.io/skim.xml',
          checkpoint: 'be3ba8a5a09a253820e685a5e871228bc0ab0cbba1bbd0da6fa8f3bedce861f6'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
