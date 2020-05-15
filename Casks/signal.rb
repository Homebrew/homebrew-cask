cask 'signal' do
  version '1.34.0'
  sha256 'ae80d7d04064f5057f989910aae8720dc73ca9e4ee5485a7954d2dbd66a55df3'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.dmg"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom'
  name 'Signal'
  homepage 'https://signal.org/'

  auto_updates true

  app 'Signal.app'

  zap trash: [
               '~/Library/Application Support/Signal',
               '~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist',
               '~/Library/Preferences/org.whispersystems.signal-desktop.plist',
               '~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState',
             ]
end
