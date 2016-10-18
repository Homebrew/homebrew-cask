cask 'skim' do
  version '1.4.22'
  sha256 'c48364cd09498622859c3c65873eb34b026e14865df34f5e04f9adbd344bd29f'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: 'a23de0bddaab6caf8a16e5090af1ddd247b0ac191cd4f7163dce2168faa33246'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
