cask 'citrix-workspace' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    # No known stable URL; fetching disposable URL from landing site.
    # The URL is stored in a rel attribute (not href):
    # <a rel="//downloads.citrix.com/16912/CitrixWorkspaceApp.dmg?__gda__=1579015867_9f0bd2bd997f925d35c593f5415d1d99">
    html_url = 'https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html'
    url = URI.open(html_url).read.scan(%r{rel="([^"]+CitrixWorkspaceApp.dmg?[^"]+)"}).flatten.first
    url.gsub(%r{^//}, 'https://')
  end
  name 'Citrix Workspace'
  homepage 'https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html'

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
