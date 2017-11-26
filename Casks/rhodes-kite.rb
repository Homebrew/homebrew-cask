cask 'rhodes-kite' do
  version '1.7'
  sha256 '9b458d763b2700f88d259d4406cd10c61e27ee333ba049b9eccd7e5e65335563'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: 'f46cdfd7f6c341d26c1f85fa559cd281d98c55e1ba4e321e402b7a0b39c6f1f3'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
