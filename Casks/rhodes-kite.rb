cask 'rhodes-kite' do
  version '1.5'
  sha256 '09ee0ccb839f7a261383c00c69514301070ad7cd070c2178e9b4c0bc52169381'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '527bd3addc81436fdf512f70ef583f7fcff09e5d71ccda7cbe2c5d203f650536'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
