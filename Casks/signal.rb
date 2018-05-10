cask 'signal' do
  version '1.10.0'
  sha256 '07091a66a8aa7fc4780b99f87a79db1fae95fe77701c9a71a5a79d624190db6c'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'ad54236c9e3fb0e4a1880d9c0a3b398332cdea7ec87c5cf7b87ab3260641fe71'
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
