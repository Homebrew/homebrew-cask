cask 'signal' do
  version '1.29.0'
  sha256 'cfad0b555f49efbb8f5d1c112d04b9502e7c593ed6968b20984d2238bb50ca1b'

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
