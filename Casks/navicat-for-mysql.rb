cask 'navicat-for-mysql' do
  version '12.0.25'
  sha256 '17ef4876f0502ec7240fc92d6e2840b09e361bf62e38403aea1f0bae3b5caf03'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: 'bba74d286fb13068152254fa411060fb9420e48770decfd4c175ba8f449e11ca'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
