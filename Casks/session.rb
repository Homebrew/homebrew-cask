cask 'session' do
  version '1.0.9'
  sha256 'dcdcaf12c18ef8b41fea50700b8c39580353757ac818a00a4c4e15ceeb482bf8'

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
