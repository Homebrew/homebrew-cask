cask 'schnapps' do
  version '1.2'
  sha256 'aa47011ead3fd64f3263641fe93f6fdf52945763df39295c3abf6aa5ae7f5fe0'

  url "http://www.schnappsformac.com/download/Schnapps_v#{version}.zip"
  appcast 'http://schnappsformac.com/download/appcast.xml',
          checkpoint: '3e7a3758358348a5fc55e24a1b4610172ed3b44c8237bb2448193f70a2fa18f4'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'

  app 'Schnapps.app'
end
