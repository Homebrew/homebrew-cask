cask 'mmex' do
  version '1.3.4'
  sha256 '3d094573241527ab8c578c4dd879373df5ff662d528cb329ab74f36f4836efe2'

  # github.com/moneymanagerex/moneymanagerex/ was verified as official when first introduced to the cask
  url "https://github.com/moneymanagerex/moneymanagerex/releases/download/v#{version}-Release/mmex-#{version}-Darwin.dmg"
  appcast 'https://github.com/moneymanagerex/moneymanagerex/releases.atom'
  name 'Money Manager Ex'
  homepage 'https://www.moneymanagerex.org/'

  app 'MMEX.app'

  zap trash: [
               '~/Library/Application Support/MoneyManagerEx',
               '~/Library/Caches/com.yourcompany.MMEX',
               '~/Library/Preferences/com.yourcompany.MMEX.plist',
             ]
end
