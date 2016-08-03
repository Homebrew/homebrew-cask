cask 'citrix-receiver' do
  version '12.2.0'
  sha256 '2401fdd57a20c2c4874b2d3da85bf89105c705f240ead4918591846c4904e8cb'

  # downloadplugins.citrix.com.edgesuite.net was verified as official when first introduced to the cask
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixReceiverWeb.dmg'
  name 'Citrix Receiver'
  homepage 'https://www.citrix.com/receiver'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
