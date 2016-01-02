cask 'skim' do
  version '1.4.16'
  sha256 '9586083eae00131bf930a9e31da9b8be13f9563249d5ecb7a3ef147c0961d526'

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
