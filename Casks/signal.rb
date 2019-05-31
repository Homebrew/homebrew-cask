cask 'signal' do
  version '1.25.0'
  sha256 '713439d8c9d0aff4419c7235462e89f10129f31016fc1456ee92b70e96a6c70b'

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
