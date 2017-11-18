cask 'signal' do
  version '1.0.38'
  sha256 'c53b10de3e5f3aa471735d5146b50ae9b7aec79a93cc84e287810d740162a2a7'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: 'bb52ad1e877fff1d9aacfd5d9bf8b1374273ea7a5a37370f7bda8d3aa74becc3'
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
