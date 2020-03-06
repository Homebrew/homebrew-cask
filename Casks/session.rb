cask 'session' do
  version '1.0.4'
  sha256 'e81ab3b753c93f11ef5625b9fa8940e176ac04c3da4aa13803d6aada5331b467'

  # github.com/loki-project/session-desktop was verified as official when first introduced to the cask
  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-messenger-desktop-mac-#{version}.dmg"
  appcast 'https://github.com/loki-project/session-desktop/releases.atom'
  name 'Session'
  homepage 'https://getsession.org/'

  app 'Session.app'

  zap trash: [
               '~/Library/Application Support/Session',
               '~/Library/Caches/Session',
               '~/Library/Preferences/com.loki-project.messenger-desktop.plist',
               '~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState',
             ]
end
