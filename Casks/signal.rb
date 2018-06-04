cask 'signal' do
  version '1.12.0'
  sha256 '4da9f78e14cb2daae69f3a32f6000f780f6a57b25a40fc4f536eea6b120aa7d9'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'f94ef7c6125947a995b418109c23b4fcf23ccbc55d79184b645ad32b2bca3923'
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
