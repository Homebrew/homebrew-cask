cask 'opensc' do
  version '0.18.0'
  sha256 'adb8f79a983ef6c4262e7601373e0502c474951582cc014c7ed48eba71e99be3'

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  appcast 'https://github.com/OpenSC/OpenSC/releases.atom'
  name 'OpenSC'
  homepage 'https://github.com/OpenSC/OpenSC/wiki'

  pkg "OpenSC #{version}.pkg"

  uninstall script: {
                      executable: '/usr/local/bin/opensc-uninstall',
                      sudo:       true,
                    }
end
