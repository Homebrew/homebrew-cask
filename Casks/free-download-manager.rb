cask 'free-download-manager' do
  version '5.1.29'
  sha256 '272ba51600440ba5c9c57d2eb8331bb5219821625514bca8c497b84e595c150e'

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
