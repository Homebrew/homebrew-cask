cask 'gog-galaxy' do
  version '1.2.17.8'
  sha256 'eb7ce9caf63782dcdabd2e9faafc66757812bd907c84a71f38547244a71e0982'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    '/Applications/GalaxyClient.app',
            launchctl: [
                         'com.gog.galaxy.ClientService',
                         'com.gog.galaxy.commservice',
                       ]

  zap delete: [
                '/Library/PrivilegedHelperTools/com.gog.galaxy.ClientService',
                '/Users/Shared/GOG.com',
                '~/Library/Preferences/com.gog.galaxy.cef.renderer.plist',
                '~/Library/Saved Application State/com.gog.galaxy.savedState',
              ]
end
