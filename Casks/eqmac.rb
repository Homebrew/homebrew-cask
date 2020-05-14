cask 'eqmac' do
  version '0.1.1'
  sha256 'a59ee2ab63b81c1ff39de09bcdb97cf2c65457d79d5ba172a190b7206fa2ad54'

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
