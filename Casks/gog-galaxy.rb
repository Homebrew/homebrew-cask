cask 'gog-galaxy' do
  version '1.2.64.2'
  sha256 '974eed5c031eb0980fd50b631858e57e39d5faad4dd25a2bdeedd445d2dde415'

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
