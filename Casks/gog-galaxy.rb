cask 'gog-galaxy' do
  version '2.0.16.200'
  sha256 'e4d21977d6cd1e25f56db2a76de4f35c4f62f302a7a3e2412a45a12a0955d8b7'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://gog.com/galaxy&encoding=utf-8&user_agent=Macintosh'
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  auto_updates true

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    '/Applications/GOG Galaxy.app',
            launchctl: [
                         'com.gog.galaxy.ClientService',
                         'com.gog.galaxy.commservice',
                         'com.gog.galaxy.autoLauncher',
                       ]

  zap trash: [
               '/Library/LaunchDaemons/com.gog.galaxy.ClientService.plist',
               '/Library/PrivilegedHelperTools/com.gog.galaxy.ClientService',
               '/Users/Shared/GOG.com',
               '~/Library/Application Support/GOG.com',
               '~/Library/Preferences/com.gog.galaxy.cef.renderer.plist',
               '~/Library/Preferences/com.gog.galaxy.plist',
               '~/Library/Saved Application State/com.gog.galaxy.savedState',
             ]
end
