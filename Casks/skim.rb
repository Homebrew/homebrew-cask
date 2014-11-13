cask :v1 => 'skim' do
  version '1.4.9'
  sha256 'b8964263e06b37b81443659d4c96385866d5b0af6e65ce393095b46e95591546'

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
