cask :v1 => 'mmex' do
  version '1.1.0'
  sha256 '37042d0255e4bf89aecab1373e8c27597ad654f9164a1ee1d2773f021c79a925'

  url "http://downloads.sourceforge.net/sourceforge/moneymanagerex/Version%20#{version}/mmex_#{version}_mac.dmg"
  homepage 'http://www.moneymanagerex.org'
  license :gpl

  app 'mmex.app'

  zap :delete => [
                  '~/Library/Application Support/mmex',
                  '~/Library/Caches/com.yourcompany.MMEX',
                  '~/Library/Preferences/com.yourcompany.MMEX.plist',
                 ]
end
