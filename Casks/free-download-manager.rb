cask 'free-download-manager' do
  version :latest
  sha256 :no_check

  url 'http://dn3.freedownloadmanager.org/5/5.1-latest/fdm.dmg'
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/'

  depends_on macos: '>= 10.9'

  app 'Free Download Manager.app'

  zap delete: [
                '~/Library/Application Support/Free Download Manager',
                '~/Library/Caches/org.freedownloadmanager.fdm*',
                '~/Library/Preferences/org.freedownloadmanager.fdm5.plist',
                '~/Library/Saved Application State/org.freedownloadmanager.fdm5.savedState',
                '~/Library/LaunchAgents/org.freedownloadmanager.fdm5.helper.plist',
              ]
end
