cask 'moneywell' do
  version '3.0.5'
  sha256 'c2c888281b96922c8eff50034fca7565ef485ab693b7847f51de6cbd982345ce'

  url "https://moneywellapp.com/mw/builds/MoneyWell-#{version}.zip"
  appcast "https://moneywellapp.com/mw/feeds/#{version.major}x/appcast.xml",
          checkpoint: 'eb5ad6e67142c0ca5b6c7e9d64425e4db0cab48f8d5f066696a778977efd3b12'
  name 'MoneyWell'
  homepage 'https://moneywellapp.com/'

  app 'MoneyWell.app'
end
