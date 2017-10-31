cask 'mmex' do
  version '1.3.3'
  sha256 '49eeb6b50a51bfa09da7f4bb063ad75c5695eeeac410ae13d4c8e8844ac43505'

  # github.com/moneymanagerex/moneymanagerex was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex_#{version}_macos10.9-wx3.0.2build.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom',
          checkpoint: 'c027d7d307038432315067629e30c3b587e2fd1b10d9c7702af64995cb2831d0'
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
