cask 'free-download-manager' do
  version '5.1'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://dn3.freedownloadmanager.org/#{version.major}/#{version}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/'

  depends_on macos: '>= 10.9'

  app 'Free Download Manager.app'

  zap delete: [
                '~/Library/Application Support/Free Download Manager',
                "~/Library/Caches/org.freedownloadmanager.fdm#{version.major}",
                "~/Library/Preferences/org.freedownloadmanager.fdm#{version.major}.plist",
                "~/Library/Saved Application State/org.freedownloadmanager.fdm#{version.major}.savedState",
                "~/Library/LaunchAgents/org.freedownloadmanager.fdm#{version.major}.helper.plist",
              ]
end
