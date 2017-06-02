cask 'clover-configurator' do
  version '4.42.1'
  sha256 'c7add53a0f9d865fc68bc1ce07588280325ffb6bbe9caa394031f21a4decf2a2'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '9540750a85a95df02c27b7b466cc4e31ded0fd74d6b89d478f0882a24d7feda8'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
