cask 'cashculator' do
  version '1.5'
  sha256 '97629125ce974b24df77be8808a3e9b233eef1f4d2ce57ec8c1a42d823dec0ac'

  url "https://dl.apparentsoft.com/Cashculator_#{version}.dmg"
  appcast 'https://dl.apparentsoft.com/cashculator.rss'
  name 'Cashculator'
  homepage 'https://www.apparentsoft.com/cashculator'

  app 'Cashculator.app'
end
