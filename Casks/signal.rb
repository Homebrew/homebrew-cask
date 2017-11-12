cask 'signal' do
  version '1.0.37'
  sha256 '5d066f8e3d544e085c513d28f021f0cf4c96b7ed823342e12ab4b155a08cb5e1'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '244a5883125c2f5ce392da1ce1262919b254176b330f5e22f76838dae79a3ef0'
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
