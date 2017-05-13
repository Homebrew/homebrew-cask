cask 'mmex' do
  version '1.3.1'
  sha256 'c84f70258122b2c1037a745a6701fb8bc7a44a2bf9210f8e41152945333cd544'

  # github.com/moneymanagerex/moneymanagerex was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex-v#{version}-macOS10.9.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom',
          checkpoint: '1a1324a603e532ca85978619a8852fa2d91dfdb1f7cfb9a8b5c51de1c673283e'
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
