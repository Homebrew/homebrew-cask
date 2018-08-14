cask 'cashculator' do
  version '1.4'
  sha256 'ea5a1754909d84f725703c58f8444581ab321cd647af232458d10173c1856c36'

  url "https://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'https://dl.apparentsoft.com/cashculator.rss'
  name 'Cashculator'
  homepage 'https://www.apparentsoft.com/cashculator'

  app 'Cashculator.app'
end
