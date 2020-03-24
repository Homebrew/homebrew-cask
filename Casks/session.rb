cask 'session' do
  version '1.0.5'
  sha256 'f2984ec9c426420907ae481243eb8fd353cbcf7916270599a2bb18db45e3a587'

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
