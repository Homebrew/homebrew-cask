cask 'signal' do
  version '1.7.1'
  sha256 '04091ec8a220f2e4976e7165caf17ea12db0525ece6c9479ea708df987c9ccfe'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '306db3a4895dc2125b099e8654759324f89aa76ca9c89bfdb98d9639a732d0f6'
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
