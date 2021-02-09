cask 'citrix-workspace' do
  version '18.12,15579:1545940629_adfa92c83b8b302175ff456856be0e30'
  sha256 'b5d6e406402ae4f72ba431e60c3c0a390a6cf483be34fbea44c710a8a0c8e1bc'

  url "http://downloadplugins.citrix.com/Mac/CitrixWorkspaceApp.dmg"
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
