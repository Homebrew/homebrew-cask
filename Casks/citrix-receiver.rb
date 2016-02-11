cask 'citrix-receiver' do
  version '12.1'
  sha256 '86d376b1b3fdf3a5b53c1c9129b2cbf11087e0c190514a3da24c4f69aa8fa150'

  url "https://downloads.citrix.com/10820/CitrixReceiver#{version}.dmg?__gda__=1455232474_2e6dd1faf0ad4d99a5361e3ea75af357"
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
