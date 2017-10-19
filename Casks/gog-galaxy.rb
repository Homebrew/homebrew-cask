cask 'gog-galaxy' do
  version '1.2.25.13'
  sha256 '12c7faec5f6438656aab39b4560aaef98384ef63ed1ce2c599dfade6552bd3a2'

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
