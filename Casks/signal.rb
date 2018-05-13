cask 'signal' do
  version '1.10.1'
  sha256 '0944e9e29b71c5a7a722fc626d2fc7ed03d0fc6f1d8281960a47b9fccdb6a7f6'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '25a8a902518c44a13ddb9eaab2d60644fa034b72df7cac41f9f0e8bf60097e66'
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
