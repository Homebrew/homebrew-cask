cask 'signal' do
  version '1.29.2'
  sha256 '3ec08c6968891cef50b6a7528f2c060244a2ddf359b90ed8681c4484bafea072'

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
