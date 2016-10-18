cask 'citrix-receiver' do
  version '12.3.0'
  sha256 'cd06f5fcb6c20f807318cf9b3eada887ac9e5e59e766f1310ad25b28caea3573'

  # downloadplugins.citrix.com.edgesuite.net was verified as official when first introduced to the cask
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  name 'Citrix Receiver'
  homepage 'https://www.citrix.com/receiver'

  pkg 'Install Citrix Receiver.pkg'

  uninstall launchctl: [
                         'com.citrix.AuthManager_Mac',
                         'com.citrix.ReceiverHelper',
                         'com.citrix.ServiceRecords',
                       ],
            quit:      [
                         'Citrix.ServiceRecords',
                         'com.citrix.ReceiverHelper',
                       ],
            pkgutil:   'com.citrix.ICAClient'

  zap delete: [
                '~/Library/Application Support/Citrix Receiver',
                '~/Library/Preferences/com.citrix.receiver.nomas.plist',
                '~/Library/Preferences/com.citrix.receiver.nomas.plist.lockfile',
                '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist',
                '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist.lockfile',
              ]
end
