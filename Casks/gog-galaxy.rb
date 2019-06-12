cask 'gog-galaxy' do
  version '1.2.57.66'
  sha256 '1ec3217a74d9aafe2f93e6d293a7bee1a937248cc0d4baded965cddb977e0ada'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  appcast 'https://www.gog.com/galaxy'
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  auto_updates true

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    '/Applications/GOG Galaxy.app',
            launchctl: [
                         'com.gog.galaxy.ClientService',
                         'com.gog.galaxy.commservice',
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
