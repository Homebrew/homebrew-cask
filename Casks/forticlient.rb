cask 'forticlient' do
  version '6.0'
  sha256 '473ee0af69d03a859f0b55d4e30f5f5368e8c3d42cbf30beb02569e9e591d4b7'

  # filestore.fortinet.com/forticlient was verified as official when first introduced to the cask
  url "https://filestore.fortinet.com/forticlient/downloads/FortiClientOnlineInstaller_#{version}.dmg"
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
