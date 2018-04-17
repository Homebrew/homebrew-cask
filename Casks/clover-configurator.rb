cask 'clover-configurator' do
  version '4.60.3.4'
  sha256 '42e23a824d2357083a1c81a55d4e1b4902fec9243aeaa21296b531358a05bc8c'

  url 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/CCV.zip'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '03249bcc3715704ca32945ab99d4cab90beaab33dbcc2f619a66b6f33b3ea3fa'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
