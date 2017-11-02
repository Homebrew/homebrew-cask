cask 'signal' do
  version '1.0.35'
  sha256 '66fe12bbff7f67494b59b537c80d974cc3f8bd38712caf6f36a1690b5b1c7b98'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '7dc0a07e8499c4e44ba6fc8ce13a083d497d05e5668dcd404bc547b9dcc68d99'
  name 'Signal'
  homepage 'https://signal.org/'

  app 'Signal.app'

  zap delete: '~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState',
      trash:  [
                '~/Library/Application Support/Signal',
                '~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist',
                '~/Library/Preferences/org.whispersystems.signal-desktop.plist',
              ]
end
