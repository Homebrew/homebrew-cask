cask 'free-download-manager' do
  version '5.1.30'
  sha256 'f6d245def8fe0000d9a1e8402735c415716a11aaabc95a829e1c32d8a83fd448'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'

  zap delete: [
                '~/Library/Application Support/Free Download Manager',
                "~/Library/Caches/org.freedownloadmanager.fdm#{version.major}",
                "~/Library/Preferences/org.freedownloadmanager.fdm#{version.major}.plist",
                "~/Library/Saved Application State/org.freedownloadmanager.fdm#{version.major}.savedState",
                "~/Library/LaunchAgents/org.freedownloadmanager.fdm#{version.major}.helper.plist",
              ]
end
