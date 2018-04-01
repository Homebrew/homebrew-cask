cask 'rhodes-kite' do
  version '1.7.6'
  sha256 '8b6bd2031e816f758e202b4b5e0b346374bbc6f6e4407311241a97d3cd5427a9'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '704dba0129215d79283c17e3b67611708acc3ff98475ae8ce3942ceb1d1d8f27'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
