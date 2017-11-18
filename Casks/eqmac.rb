cask 'eqmac' do
  version '2.0.6'
  sha256 '565544e1c7b12f3cf361176896fd8917857f188ff8b875d2e18e9da8231be79f'

  # github.com/romankisil/eqMac was verified as official when first introduced to the cask
  url "https://github.com/romankisil/eqMac#{version.major}/releases/download/v#{version}/eqMac#{version.major}.dmg"
  appcast "https://github.com/romankisil/eqMac#{version.major}/releases.atom",
          checkpoint: '03e18588a03e2b6efb51da18b709589a2dc30df15a717d17581cc09a904bdc1a'
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

  zap trash: [
               "~/Library/Caches/com.bitgapp.eqMac#{version.major}",
               "~/Library/Cookies/com.bitgapp.eqMac#{version.major}.binarycookies",
             ]
end
