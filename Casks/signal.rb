cask 'signal' do
  version '1.29.3'
  sha256 '8e2a2a394854b4b252f741db23d5301fd52bded4587f3919f60f41d827535270'

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
