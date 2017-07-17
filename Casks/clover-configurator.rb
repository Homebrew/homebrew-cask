cask 'clover-configurator' do
  version '4.45.0'
  sha256 'cbc80f8dbaf8bdbd26763d4e32a2265c36ef53e5df3cae1f2918c0b927c73068'

  url 'http://mackie100projects.altervista.org/download-mac.php?version=vibrant'
  appcast 'http://mackie100projects.altervista.org/apps/cloverconf/10.10/update.xml',
          checkpoint: '37404842f371ff0b189c55dba35efa869d2ff1e6bc8e39030370f354e9bee5fa'
  name 'Clover Configurator'
  homepage 'http://mackie100projects.altervista.org/'

  app 'Clover Configurator.app'
end
