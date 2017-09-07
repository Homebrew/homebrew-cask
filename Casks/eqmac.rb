cask 'eqmac' do
  version '2.0.7'
  sha256 'caa97a681371f60173aabd3949e381f8b53234fb9642340d49795a495df0fa15'

  # github.com/romankisil/eqMac was verified as official when first introduced to the cask
  url "https://github.com/romankisil/eqMac#{version.major}/releases/download/v#{version}/eqMac#{version.major}.dmg"
  appcast "https://github.com/romankisil/eqMac#{version.major}/releases.atom",
          checkpoint: '734ff65d148b0f3d7ef6988ecdc5a84870f7523986ee8cbe5bede0b905536e4e'
  name 'eqMac'
  homepage 'https://www.bitgapp.com/eqmac/'

  app "eqMac#{version.major}.app"
  installer script: {
                      executable: "#{staged_path}/eqMac#{version.major}.app/Contents/Resources/install_new.sh",
                      sudo:       true,
                    }

  uninstall login_item: "eqMac#{version.major}",
            quit:       "com.bitgapp.eqMac#{version.major}",
            script:     {
                          executable: "#{appdir}/eqMac#{version.major}.app/Contents/Resources/uninstall_app.sh",
                          sudo:       true,
                        }

  zap delete: [
                "~/Library/Caches/com.bitgapp.eqMac#{version.major}",
                "~/Library/Cookies/com.bitgapp.eqMac#{version.major}.binarycookies",
              ]
end
