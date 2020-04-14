cask 'eqmac' do
  version '2.2'
  sha256 'ff60579197b52571d9686bbfaec695dfa75797b8a9314fbf69a673bbeb12e1fc'

  url "https://github.com/bitgapp/eqMac/releases/download/V#{version}/eqMac#{version.major}.dmg"
  appcast 'https://github.com/bitgapp/eqMac/releases.atom'
  name 'eqMac'
  homepage 'https://github.com/bitgapp/eqMac/releases/'

  app "eqMac#{version.major}.app"
  installer script: {
                      executable: "#{staged_path}/eqMac#{version.major}.app/Contents/Resources/install_driver.sh",
                      sudo:       true,
                    }

  uninstall quit:   "com.bitgapp.eqMac#{version.major}",
            script: {
                      executable: "#{appdir}/eqMac#{version.major}.app/Contents/Resources/uninstall_driver.sh",
                      sudo:       true,
                    }

  zap trash: [
               "~/Library/Caches/com.bitgapp.eqMac#{version.major}",
               "~/Library/Cookies/com.bitgapp.eqMac#{version.major}.binarycookies",
             ]
end
