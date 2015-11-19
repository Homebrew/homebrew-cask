cask :v1 => 'skim' do
  version '1.4.15'
  sha256 '049b44000a0636aaadf0cf61f9db08ef7d0c7f99a97d60d8ef2f410347f7c0b0'

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
