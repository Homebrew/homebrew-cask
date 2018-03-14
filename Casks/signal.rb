cask 'signal' do
  version '1.6.0'
  sha256 'fb223013f8b6b0044bbd5d68a6e6eafad3feabed48af59c7f4fb5dc43507d31f'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '0892670f255fab87e6822e2f82f44128a0d55ce1ea314d93f32756f59b909415'
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
