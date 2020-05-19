cask 'mmex' do
  version '1.3.4'
  sha256 '8338c3e8c859b900d86437b8ff72e80c16f440b568068419bc65aa920a4f66a7'

  # sourceforge.net/projects/moneymanagerex/ was verified as official when first introduced to the cask
  url 'https://sourceforge.net/projects/moneymanagerex/files/latest/download'
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
