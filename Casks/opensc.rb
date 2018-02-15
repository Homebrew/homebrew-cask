cask 'opensc' do
  version '0.17.0'
  sha256 'b35a56cafa4403fcb941422e4975c843018965282571d05a660485a21fde1bbe'

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  appcast 'https://github.com/github/SoftU2F/releases.atom',
          checkpoint: 'b574f1d88aedca7b114cd5e473d66cd35180d04d5a9877d5088bad1b0bdb1992'
  name 'opensc'
  homepage 'https://github.com/OpenSC/OpenSC'

  pkg "OpenSC #{version}.pkg"

  uninstall script: {
                      executable: '/usr/local/bin/opensc-uninstall',
                      sudo:       true,
                    }
end
