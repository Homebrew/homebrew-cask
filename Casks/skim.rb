cask :v1 => 'skim' do
  version '1.4.14'
  sha256 'b84ada7975a8f6c606d91b4b00871a41393b00dffea9b4928f1242f46def4c8d'

  url "http://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          :sha256 => '9cc2f44deaa4cbdc53665595a059de90428b3f558e91c5cc599d06e577af047c'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'
  license :bsd

  app 'Skim.app'
  binary 'Skim.app/Contents/SharedSupport/displayline'
  binary 'Skim.app/Contents/SharedSupport/skimnotes'
  binary 'Skim.app/Contents/SharedSupport/skimpdf'

  zap :delete => '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
