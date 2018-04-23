cask 'rhodes-kite' do
  version '1.9.1'
  sha256 '4f2632857ce98240bd4ec5c5c48b6c8de318575a3b9169c9e1ffe3e3b8617378'

  url "https://kiteapp.co/downloads/Kite-#{version}.zip"
  appcast 'https://api.kiteapp.co/kite_appcast.xml',
          checkpoint: '59e44a50e3b523c9d0ab8d6a58bfb34cc4f870bd635674a329af730a10c17ea0'
  name 'Kite Compositor'
  homepage 'https://kiteapp.co/'

  app 'Kite.app'
end
