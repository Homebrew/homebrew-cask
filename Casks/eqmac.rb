cask 'eqmac' do
  version '2.2'
  sha256 'ff60579197b52571d9686bbfaec695dfa75797b8a9314fbf69a673bbeb12e1fc'

  # github.com/nodeful/eqMac was verified as official when first introduced to the cask
  url "https://github.com/nodeful/eqMac#{version.major}/releases/download/V#{version}/eqMac#{version.major}.dmg"
  appcast "https://github.com/nodeful/eqMac#{version.major}/releases.atom",
          checkpoint: '3eb76b4bdc9b935629de67bf2721479cf8381cbb3d4cff50eaa4154a16fc465d'
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
