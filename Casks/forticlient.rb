cask 'forticlient' do
  version '6.0.1'
  sha256 'ef54a8fcc3588c6a7a87b6a94c976d58bf6fabbf4a48626be8d52ab72b0d01f1'

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
