cask 'rhodes-kite' do
  version '1.2.1'
  sha256 '50c48b1d25ec70110383628c448f23d38e739e2891b714eb7f345df88fdd6753'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: 'c29ffd466c3bda57de695daa50211d19dd65af16408819e4651d924ed09be5d8'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
