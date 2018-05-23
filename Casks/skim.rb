cask 'skim' do
  version '1.4.35'
  sha256 'e4922bd8231c20b478bd24dd1124188ae770d78626cc98858f84e3316ef54dc9'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'https://skim-app.sourceforge.io/skim.xml',
          checkpoint: '96b8f4b19a2bd5df6304cab5dbbf7ca8f2f635f7d6315225ff7f71a6d58d5ff5'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
