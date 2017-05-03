cask 'meteorologist' do
  version '3.0.4'
  sha256 'dbe6f0f5dc69c40539ddeeafb17e99f47c028a93a5380a4f60652290401157a4'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '6240ba45621b7e0282ff7205864a10e75270bc2a25d3f961d577139667bb6ce8'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
