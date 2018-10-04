cask 'citrix-workspace' do
  version :latest
  sha256 :no_check

  # downloadplugins.citrix.com.edgesuite.net was verified as official when first introduced to the cask
  url 'http://downloadplugins.citrix.com.edgesuite.net/Mac/CitrixWorkspaceApp.dmg'
  name 'Citrix Workspace'
  homepage 'https://www.citrix.com/products/workspace-app/'

  pkg 'Install Citrix Workspace.pkg'

  uninstall launchctl: [
                         'com.citrix.AuthManager_Mac',
                         'com.citrix.ReceiverHelper',
                         'com.citrix.ServiceRecords',
                         'com.citrix.ctxusbd',
                       ],
            quit:      [
                         'Citrix.ServiceRecords',
                         'com.citrix.ReceiverHelper',
                         'com.citrix.receiver.nomas',
                       ],
            pkgutil:   'com.citrix.ICAClient'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.citrix.receiver.nomas.sfl*',
               '~/Library/Application Support/com.citrix.receiver.nomas',
               '~/Library/Caches/com.citrix.receiver.nomas',
               '~/Library/Logs/Citrix Workspace',
               '~/Library/Preferences/com.citrix.receiver.nomas.plist',
               '~/Library/Preferences/com.citrix.receiver.nomas.plist.lockfile',
               '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist',
               '~/Library/Preferences/com.citrix.ReceiverFTU.AccountRecords.plist.lockfile',
             ]
end
