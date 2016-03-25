cask 'skim' do
  version '1.4.18'
  sha256 'be371b4d4cc6c94818a5396883d5d9f9fe5fde32f61734b70c454009cf85590e'

  url "http://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: '4e90b49f9dd366419174763d95bc55d5f5236bd29662c9c5fd23c6dc9aa0d019'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'
  license :bsd

  app 'Skim.app'
  binary 'Skim.app/Contents/SharedSupport/displayline'
  binary 'Skim.app/Contents/SharedSupport/skimnotes'
  binary 'Skim.app/Contents/SharedSupport/skimpdf'

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
