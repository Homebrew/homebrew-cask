cask 'opensc' do
  version '0.17.0'
  sha256 'b35a56cafa4403fcb941422e4975c843018965282571d05a660485a21fde1bbe'

  url "https://github.com/OpenSC/OpenSC/releases/download/#{version}/OpenSC-#{version}.dmg"
  appcast 'https://github.com/OpenSC/OpenSC/releases.atom',
          checkpoint: '064e2a4870fa8f8989661fc602f396220906cea5c4d4e1383f92108a757bdeef'
  name 'OpenSC'
  homepage 'https://github.com/OpenSC/OpenSC/wiki'

  pkg "OpenSC #{version}.pkg"

  uninstall script: {
                      executable: '/usr/local/bin/opensc-uninstall',
                      sudo:       true,
                    }
end
