cask 'mmex' do
  version '1.3.3'
  sha256 '49eeb6b50a51bfa09da7f4bb063ad75c5695eeeac410ae13d4c8e8844ac43505'

  # github.com/moneymanagerex/moneymanagerex was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}/mmex_#{version}_macos10.9-wx3.0.2build.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom'
  name 'Money Manager Ex'
  homepage 'https://www.moneymanagerex.org/'

  depends_on macos: '>= :mavericks'

  app 'MMEX.app'

  zap trash: [
               '~/Library/Application Support/MoneyManagerEx',
               '~/Library/Caches/com.yourcompany.MMEX',
               '~/Library/Preferences/com.yourcompany.MMEX.plist',
             ]
end
