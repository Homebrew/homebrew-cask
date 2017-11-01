cask 'signal' do
  version '1.0.34'
  sha256 'b45f89aeb9efd7d28eba8b2fdc5dd2fb0ca090daca3641afb1b2a549988337b3'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: 'ff47b28f8160eaea122a2b78f672848ca86482258d5ef6b41d37d35aa3c54865'
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
