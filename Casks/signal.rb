cask 'signal' do
  version '1.32.1'
  sha256 '0cfbfd15b51d5fc5eeab43200fd7d6284b35a70ba40464b10902f191df88e96b'

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
