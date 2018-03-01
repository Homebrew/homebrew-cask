cask 'signal' do
  version '1.5.0'
  sha256 '1224d03cad29e41727b2d0930852d0f0a7a6992cc766ac13e9e18b96dc0387c6'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'a73a7db07d59a46133a2ac89eaa3bdca38956090a913c92b247d4abd0cd34aa8'
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
