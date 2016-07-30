cask 'mmex' do
  version '1.2.7'
  sha256 '48b780000a5b153ce58b49d7ba03c45d9eed1311b3984d79f4f3080fb05d99d0'

  # https://github.com/moneymanagerex/moneymanagerex seems to be the default repository now. See http://www.moneymanagerex.org/.
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-v#{version}.dmg"
  name 'Money Manager Ex'
  homepage 'http://www.moneymanagerex.org'
  license :gpl

  app 'MMEX.app'

  zap delete: [
                '~/Library/Application Support/MoneyManagerEx',
                '~/Library/Caches/com.yourcompany.MMEX',
                '~/Library/Preferences/com.yourcompany.MMEX.plist',
              ]
end
