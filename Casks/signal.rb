cask 'signal' do
  version '1.8.0'
  sha256 '20bfa357f0539c6d3a2cd0f212f13934c006a9256dd194262a49534c9f374c26'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '616f6b1b06fe73a27f3c60c067172a17ca94ec45b61c3f8ab13cf663b1c8f7d6'
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
