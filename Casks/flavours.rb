cask 'flavours' do
  version '1.1.16'
  sha256 '54b9b06733ee9f58bf767ad101e3822b15884ac94cdfc37aa895381b6b8258b0'

  url "http://flavours-updates.interacto.net/Flavours_#{version}.dmg"
  appcast 'http://flavours-updates.interacto.net/appcast.xml',
          checkpoint: '89d3f77f9add647db73a55227497e09f585b556a93d5545de361a95bb40f9a47'
  name 'Flavours'
  homepage 'http://flavours.interacto.net/'
  license :commercial

  app 'Flavours.app'

  uninstall launchctl: 'net.interacto.flavours.helper',
            quit:      'net.interacto.Flavours',
            delete:    [
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
