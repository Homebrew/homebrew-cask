cask 'gog-galaxy' do
  version '1.2.20.31'
  sha256 '02d0df4bdbe5cceceec5f4734b30d33f56c2aff3ee4e570575563febb1fafb8d'

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
