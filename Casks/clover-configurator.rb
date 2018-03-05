cask 'clover-configurator' do
  version '4.60.3.0'
  sha256 'ce4659ba72e670e5a21b37e7051ceb6f539dc79178b593bdfbc6cc9236409ac2'

  url 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/CCV.zip'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '5f0ac18c0c48d9b44730b6bbb560c55f1015da53e0e3ad4cad5795b5a0d4973f'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
