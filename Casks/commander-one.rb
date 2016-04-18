cask 'commander-one' do
  version '1.5.1'
  sha256 'b6c1759887ae9081395a9f437a415f52a9adcaa4f62cd273bd4b38c775ebf12d'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: '04e6c4477c910342e13172d66f73c5235488129fe10dc73faa525bb49a063772'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
