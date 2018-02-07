cask 'clover-configurator' do
  version '4.60.1.0'
  sha256 '049c691f127970ac596bf0eb94e28823db13cfe7a748c16c26bea2fb07ebe863'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '02210978a43f779891db062c11166d6bdf1b9fdd26ff01eb3f3f4a012ccc3a3c'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
