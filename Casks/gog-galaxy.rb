cask 'gog-galaxy' do
  version '1.2.12.11'
  sha256 '65ff0b95869a15ae77c6fb6989e37a62e18d247b74ffd6711d09ce3651ee7101'

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
