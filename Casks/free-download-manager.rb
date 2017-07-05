cask 'free-download-manager' do
  version '5.1.31'
  sha256 '449dcaba5cbea8eb716f9cfa1895aae4247336e0552ad49df510745635d1500c'

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
