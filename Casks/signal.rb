cask 'signal' do
  version '1.0.34'
  sha256 'b45f89aeb9efd7d28eba8b2fdc5dd2fb0ca090daca3641afb1b2a549988337b3'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
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
