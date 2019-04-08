cask 'moneywell' do
  version '3.0.9'
  sha256 '4137e9ed9b1b7fb414c0e66c01ffde0bcd00d28152021ddefd5097ae01c48983'

  # moneywell.app was verified as official when first introduced to the cask
  url "https://moneywell.app/downloads/sparkle/MoneyWell-#{version}.zip"
  appcast "https://moneywellapp.com/mw/feeds/#{version.major}x/appcast.xml"
  name 'MoneyWell'
  homepage 'https://moneywellapp.com/'

  app 'MoneyWell.app'
end
