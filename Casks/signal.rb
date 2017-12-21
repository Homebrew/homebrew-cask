cask 'signal' do
  version '1.1.0'
  sha256 'd96f7557d91ecdc73c19fff5488d0f5cb315ae3b8a06cde201191e856142f197'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '536df6a136bec10125e216e1a8b0f286f3c952eb04628676a9d3226d59d2f601'
  name 'Signal'
  homepage 'https://signal.org/'

  app 'Signal.app'

  zap trash: [
               '~/Library/Application Support/Signal',
               '~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist',
               '~/Library/Preferences/org.whispersystems.signal-desktop.plist',
               '~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState',
             ]
end
