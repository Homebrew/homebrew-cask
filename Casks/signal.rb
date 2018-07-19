cask 'signal' do
  version '1.14.2'
  sha256 'd4cabaf9da4be8a517b8fab30d745603799c83e5157709bca1fa7f2fb4c68d51'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
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
