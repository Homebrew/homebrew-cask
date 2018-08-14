cask 'schnapps' do
  version '1.2'
  sha256 'aa47011ead3fd64f3263641fe93f6fdf52945763df39295c3abf6aa5ae7f5fe0'

  url "http://www.schnappsformac.com/download/Schnapps_v#{version}.zip"
  appcast 'http://schnappsformac.com/download/appcast.xml'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'

  app 'Schnapps.app'
end
