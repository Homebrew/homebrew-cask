cask 'citrix-receiver' do
  version :latest
  sha256 :no_check

  # downloadplugins.citrix.com.edgesuite.net was verified as official when first introduced to the cask
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  name 'Citrix Receiver'
  homepage 'https://www.citrix.com/go/receiver.html'

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
