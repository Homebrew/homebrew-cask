cask 'mmex' do
  version '1.3.3'
  sha256 '36380329f017c9edef4b7c00aa076605298830031f9ee2ccd0aba6f7911e0ea1'

  # github.com/moneymanagerex/moneymanagerex was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex_#{version}_macos10.9.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom',
          checkpoint: 'b7710b29a059b3f20a943e6d06dbcb95883f135eec8adc63ce625c93c98c0618'
  name 'Money Manager Ex'
  homepage 'http://www.moneymanagerex.org/'

  depends_on macos: '>= :mavericks'

  app 'MMEX.app'

  zap delete: [
                '~/Library/Application Support/MoneyManagerEx',
                '~/Library/Caches/com.yourcompany.MMEX',
                '~/Library/Preferences/com.yourcompany.MMEX.plist',
              ]
end
