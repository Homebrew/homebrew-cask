cask 'clover-configurator' do
  version '4.49.0.0'
  sha256 '14ec078b0f6bc23788f0774428f7a3d1fc8d0ff4d89f8a60f38bc69f37b9b82b'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '0cb0ea1f7d6195a63b1f628a59ebd9d372e3b283410fbf776b45de4f47d8ad99'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
