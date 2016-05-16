cask 'feeder' do
  version '3.2'
  sha256 '47144dfda85834c062cd972baf8a109cdd61980e8d41a107cbfef34b6699b4d4'

  url "https://reinventedsoftware.com/feeder/downloads/Feeder_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/feeder/downloads/Feeder3.xml',
          checkpoint: 'd2f2b5efa90b09478c91b39c8fe9f5810364879407c93816f8d9a682cbe5dfc8'
  name 'Feeder'
  homepage 'https://reinventedsoftware.com/feeder/'
  license :commercial

  app 'Feeder 3.app'
end
