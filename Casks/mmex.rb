class Mmex < Cask
  # This just isn't working...
  # version :latest
  # sha256 :no_check
  # url 'http://sourceforge.net/projects/moneymanagerex/files/latest/download'

  version '1.1.0'
  sha256 '37042d0255e4bf89aecab1373e8c27597ad654f9164a1ee1d2773f021c79a925'
  url "http://sourceforge.net/projects/moneymanagerex/files/moneymanagerex/Version%20#{version}/mmex_#{version}_mac.dmg/download"

  homepage 'http://www.moneymanagerex.org'
  license :gpl

  app 'mmex.app'
  zap :delete => [
                  '~/Library/Application Support/mmex',
                  '~/Library/Caches/com.yourcompany.MMEX',
                  '~/Library/Preferences/com.yourcompany.MMEX.plist',
                 ]
end
