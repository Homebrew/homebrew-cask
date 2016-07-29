cask 'mmex' do
  version '1.2.2'
  sha256 'c9da531544af256490ec5d1a62080535c1440b10f80f3600c250c7cbd0afd269'

  # downloads.sourceforge.net/project/moneymanagerex was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/moneymanagerex/moneymanagerex/Version_#{version}/mmex_#{version}_mac10.10.dmg"
  name 'Money Manager Ex'
  homepage 'http://www.moneymanagerex.org'
  license :gpl

  app 'mmex.app'

  zap delete: [
                '~/Library/Application Support/mmex',
                '~/Library/Caches/com.yourcompany.MMEX',
                '~/Library/Preferences/com.yourcompany.MMEX.plist',
              ]
end
