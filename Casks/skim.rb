cask :v1 => 'skim' do
  version '1.4.10'
  sha256 '344677ce81e565dbc4b9f6d5b001eba9e5e1dadb083d75bb6f5301100149f6bc'

  url "https://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          :sha256 => '92ff99e126c3daf99d680dd23f16ab84e26430e96478bbaeb71180756dd12ce1'
  homepage 'http://skim-app.sourceforge.net/'
  license :oss

  app 'Skim.app'
  binary 'Skim.app/Contents/SharedSupport/displayline'
  binary 'Skim.app/Contents/SharedSupport/skimnotes'
  binary 'Skim.app/Contents/SharedSupport/skimpdf'
  zap :delete => '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
