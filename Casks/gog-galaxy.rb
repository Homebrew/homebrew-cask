cask 'gog-galaxy' do
  version '1.1.30.5'
  sha256 '20fcbee34c63f0d3a5dd6c20de08c86556745abcece03cdef93aadd27a13d2c2'

  url "https://cdn.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name 'GOG Galaxy Client'
  homepage 'https://www.gog.com/galaxy'

  depends_on macos: '>= :mountain_lion'

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete: [
                      '/Applications/GalaxyClient.app',
                      '/Library/LaunchAgents/com.gog.galaxy.commservice.plist',
                      '/Library/LaunchDaemons/com.gog.galaxy.ClientService.plist',
                      '/Library/PrivilegedHelperTools/com.gog.galaxy.ClientService',
                      '~/Library/Preferences/com.gog.galaxy.cef.renderer.plist',
                      '~/Library/Preferences/com.gog.galaxy.plist',
                      '/Users/Shared/GOG.com/Galaxy',
                    ],
            rmdir:  '/Users/Shared/GOG.com'
end
