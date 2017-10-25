cask 'meteorologist' do
  version '3.1.1'
  sha256 'd8818ea6271f7c9455baba9249cb6ad3c169c847a7a843959a022e185cb526cd'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '5a84a49263a739cce5820b9a431c682618468ea520a0881732f35758457e1381'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
