cask 'clover-configurator' do
  version '4.60.3.0'
  sha256 'd14e7ec62fc95e113418fb54a8f4eda69c5174d00e63de4b904adcdc1700c740'

  url 'http://mackie100projects.altervista.org/apps/cloverconf/10.9/CCC.zip'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '5f0ac18c0c48d9b44730b6bbb560c55f1015da53e0e3ad4cad5795b5a0d4973f'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
