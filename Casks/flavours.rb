cask 'flavours' do
  version :latest
  sha256 :no_check

  url 'http://flavours-updates.interacto.net/Flavours.dmg'
  appcast 'http://flavours-updates.interacto.net/appcast.xml',
          :sha256 => '59f532eec5201cb735a8ca2beb6dc0e7eb7a25ea1940f3acff83e490b6d74e5e'
  name 'Flavours'
  homepage 'http://flavours.interacto.net/'
  license :commercial

  app 'Flavours.app'

  uninstall :launchctl => 'net.interacto.flavours.helper',
            :quit      => 'net.interacto.Flavours',
            :delete    => [
                            '/usr/local/bin/flavours.agent',
                            '/usr/local/bin/flavours.ignitor',
                            '/usr/local/bin/restoreui',
                            '/usr/local/lib/libflavours.dylib',
                            '/usr/local/lib/libflavoursui.dylib',
                          ]

  caveats do
    files_in_usr_local
  end
end
