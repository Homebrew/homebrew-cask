cask 'signal' do
  version '1.7.0'
  sha256 '70002d1566d9f32f4a10ebf0acc7b2e98d2542ce060c3e9039765c6cd82659c8'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '7edf95b5cf6fc06f4144dbc7533acf5c0624976e290234690a35d208638954e1'
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
