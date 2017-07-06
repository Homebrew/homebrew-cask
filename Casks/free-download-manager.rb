cask 'free-download-manager' do
  version '5.1.31'
  sha256 '845964e7172ac10e297b6734270bfbee1c7263bd8c0a6f9688bb63c1c9e000bb'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage "http://www.freedownloadmanager.org/landing#{version.major}.htm"

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
