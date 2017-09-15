cask 'moneywell' do
  version '3.0.2'
  sha256 'eda48abebc73591780046da0b7c3a4df3816a6315b107dafc9adcfe00d40fadc'

  url "https://moneywellapp.com/mw/builds/MoneyWell-#{version}.zip"
  appcast "https://moneywellapp.com/mw/feeds/#{version.major}x/appcast.xml",
          checkpoint: '8f72dfce40eb99857414bc51defdc10e037eb84c9f316e5c875b1bdd70bf85a0'
  name 'MoneyWell'
  homepage 'https://moneywellapp.com/'

  app 'MoneyWell.app'
end
