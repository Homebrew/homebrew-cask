cask 'opensc' do
  version '0.19.0'
  sha256 'caa6151241652d5448ea3bb83958e1c823f0138841d187a347ca5cbeb2ce0e9d'

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
