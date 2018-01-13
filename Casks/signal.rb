cask 'signal' do
  version '1.1.0'
  sha256 'd96f7557d91ecdc73c19fff5488d0f5cb315ae3b8a06cde201191e856142f197'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '004bd795c9fcc9aebc3a78952208b3f0cf6ceb63138013b35045b4c1294c9b78'
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
