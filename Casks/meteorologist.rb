cask 'meteorologist' do
  version '3.0.5'
  sha256 '491d7f7cdcdbc24a7aef90ad44f0ab17e687c7fb11560248b5e376a47f4ae26f'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '636090ef1ae369826d1288b52e25f74f66435a6be7cc33cd19a62ac8bdaa36aa'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end
