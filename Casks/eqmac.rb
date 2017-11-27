cask 'eqmac' do
  version '2.1'
  sha256 '2a1aecd0f64d4e8f0b58840207bb55a600a4e753f3d1d973c3ffcb0d28ee6491'

  # github.com/romankisil/eqMac was verified as official when first introduced to the cask
  url "https://github.com/romankisil/eqMac#{version.major}/releases/download/V#{version}/eqMac#{version.major}.dmg"
  appcast "https://github.com/romankisil/eqMac#{version.major}/releases.atom",
          checkpoint: '0ab80132b42097dfdfe2cbeb90ae5a72c978d8a651959f4e48174cc7bb7dc4b8'
  name 'eqMac'
  homepage 'https://www.bitgapp.com/eqmac/'

  app "eqMac#{version.major}.app"
  installer script: {
                      executable: "#{staged_path}/eqMac#{version.major}.app/Contents/Resources/install_driver.sh",
                      sudo:       true,
                    }

  uninstall login_item: "eqMac#{version.major}",
            quit:       "com.bitgapp.eqMac#{version.major}",
            script:     {
                          executable: "#{appdir}/eqMac#{version.major}.app/Contents/Resources/uninstall_driver.sh",
                          sudo:       true,
                        }

  zap trash: [
               "~/Library/Caches/com.bitgapp.eqMac#{version.major}",
               "~/Library/Cookies/com.bitgapp.eqMac#{version.major}.binarycookies",
             ]
end
