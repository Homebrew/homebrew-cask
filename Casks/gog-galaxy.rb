cask 'gog-galaxy' do
  version '1.2.51.27'
  sha256 '89064981482b8c2cc763337b4959db53d549530e69b1f5fdf5f47f11b6383ed2'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

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
