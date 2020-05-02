cask 'eqmac' do
  version '0.1.0'
  sha256 '3a001ad91913f90c9bfb3096f07171b6b0c130b4fca1c3c2e3b95414a6781578'

  # github.com/bitgapp/eqMac/ was verified as official when first introduced to the cask
  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg"
  appcast 'https://github.com/bitgapp/eqMac/releases.atom'
  name 'eqMac'
  homepage 'https://eqmac.app/'

  app 'eqMac.app'
  installer script: {
                      executable: "#{staged_path}/eqMac.app/Contents/Resources/install_driver.sh",
                      sudo:       true,
                    }

  uninstall quit:   [
                      'com.bitgapp.eqmac',
                      'com.bitgapp.eqmac-LaunchAtLoginHelper',
                    ],
            script: {
                      executable: "#{appdir}/eqMac.app/Contents/Resources/uninstall_driver.sh",
                      sudo:       true,
                    }

  zap trash: [
               '~/Library/Caches/com.bitgapp.eqmac',
               '~/Library/Cookies/com.bitgapp.eqmac.binarycookies',
             ]
end
