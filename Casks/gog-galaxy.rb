cask 'gog-galaxy' do
  version '1.2.24.87'
  sha256 'b10f79cb071cd32e6c86c99d9bbf51ef907b442da5bc837fe42c01a6d6326d2c'

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
