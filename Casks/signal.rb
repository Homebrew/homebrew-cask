cask 'signal' do
  version '1.11.0'
  sha256 'c8cf36ece721c0b5757e62e201ab615dbba41ae216f14c7f917bd5a837a0c94c'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '8d5ac9f0f8906429be7d7ea6a16b25d504fb13f651d678dd53d7d58194c0af9e'
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
