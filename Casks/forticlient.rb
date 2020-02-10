cask 'forticlient' do
  version '6.2'
  sha256 '13da8e4952797a6a46f5762edc7b378cf53fd31af61d5d27b5fecee2cbf7a14c'

  # filestore.fortinet.com/forticlient was verified as official when first introduced to the cask
  url "https://filestore.fortinet.com/forticlient/downloads/FortiClientVPNOnlineInstaller_#{version}.dmg"
  name 'FortiClient'
  homepage 'https://forticlient.com/'

  installer manual: 'FortiClientUpdate.app'

  uninstall script: {
                      executable: '/Applications/FortiClientUninstaller.app/Contents/Resources/uninstall_helper',
                      sudo:       true,
                    }

  zap trash: [
               '/Library/Application Support/Fortinet',
               '~/Library/Application Support/Fortinet',
               '~/Library/Application Support/FortiClient',
             ]
end
