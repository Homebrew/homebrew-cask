cask 'session' do
  version '1.1.2'
  sha256 '2e9a7236f8043513f0fae83198af614666d26d770a3eb0c6690cab4ade8f5d44'

  # github.com/loki-project/session-desktop/ was verified as official when first introduced to the cask
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
