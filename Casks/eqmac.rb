cask 'eqmac' do
  version :latest
  sha256 :no_check

  url 'https://update.eqmac.app/eqMac.dmg'
  name 'eqMac'
  homepage 'https://eqmac.app/'

  app 'eqMac.app'
  installer script: {
                      executable: "#{staged_path}/eqMac.app/Contents/Resources/install_driver.sh",
                      sudo:       true,
                    }

  uninstall quit:   'com.bitgapp.eqmac',
            script: {
                      executable: "#{appdir}/eqMac.app/Contents/Resources/uninstall_driver.sh",
                      sudo:       true,
                    }
end
