cask 'eqmac' do
  version '0.0.1'
  sha256 '00538e305f4ad90c688fc4fd9dd07969f713e35051ef98971cda53368996f918'

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg"
  appcast 'https://github.com/bitgapp/eqMac/releases.atom'
  name 'eqMac'
  homepage 'https://github.com/bitgapp/eqMac/releases/'

  app "eqMac.app"
  installer script: {
                      executable: "#{staged_path}/eqMac.app/Contents/Resources/install_driver.sh",
                      sudo:       true,
                    }

  uninstall quit:   "com.bitgapp.eqMac#{version}",
            script: {
                      executable: "#{appdir}/eqMac.app/Contents/Resources/uninstall_driver.sh",
                      sudo:       true,
                    }

  zap trash: [
               "~/Library/Caches/com.bitgapp.eqMac",
               "~/Library/Cookies/com.bitgapp.eqMac.binarycookies",
             ]
end
