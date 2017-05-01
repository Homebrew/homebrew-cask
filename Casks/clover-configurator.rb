cask 'clover-configurator' do
  version '4.42.0'
  sha256 'af50e2fafa77ffd8b6a7d63b712bb1b1384531d78c763e120f4764814986c6f6'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '0e5579375fa6e060aca52d8d86e8ce4846d56e232e38e3b9a9c76695cbfb48a8'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
