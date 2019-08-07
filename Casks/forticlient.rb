cask 'forticlient' do
  version '6.0'
  sha256 'f35c65f06d6b577359507036fea92a8c299c05de678e2ecdbad66b62ee96ddb1'

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
