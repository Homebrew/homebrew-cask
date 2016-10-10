cask 'mmex' do
  version '1.2.7'
  sha256 '48b780000a5b153ce58b49d7ba03c45d9eed1311b3984d79f4f3080fb05d99d0'

  # github.com/moneymanagerex/moneymanagerex was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-v#{version}.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom',
          checkpoint: '18d49df544c4efd41e6f85a164250408437a9081fb6f3901c62f318e1c3e7e6c'
  name 'Money Manager Ex'
  homepage 'http://www.moneymanagerex.org'

  app 'MMEX.app'

  zap delete: [
                '~/Library/Application Support/MoneyManagerEx',
                '~/Library/Caches/com.yourcompany.MMEX',
                '~/Library/Preferences/com.yourcompany.MMEX.plist',
              ]
end
