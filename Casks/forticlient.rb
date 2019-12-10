cask 'forticlient' do
  version '6.2'
  sha256 'c90dc271ce8fc497a0fb4567f871ab29350c6b09541ff7836feea8823f40267e'

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
