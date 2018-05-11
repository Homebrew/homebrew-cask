cask 'signal' do
  version '1.10.0'
  sha256 '07091a66a8aa7fc4780b99f87a79db1fae95fe77701c9a71a5a79d624190db6c'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '4dc7a90617b0c1262c03147973781e4178bb6e1d5467e65383cc9f34582c5cd3'
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
