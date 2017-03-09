cask 'kite' do
  version '1.0.1'
  sha256 '2154c0278276e8828ca44b4d3185ede4e8ebb7317f23d5a9060f774c6cb7f2a6'

  url 'https://kiteapp.co/downloads/KiteCompositor.dmg'
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: 'd1e4b46dc56a0570c1a724fc4fec87868b42293821ee1debf8b583a5c05ae145'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co'

  app 'Kite.app'
end
