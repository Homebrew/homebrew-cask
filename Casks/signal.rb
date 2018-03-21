cask 'signal' do
  version '1.6.1'
  sha256 '2a5c13d8f59ae1cd0a0de3d5f22159cea71f042c669f2602ef360a9b66c13d70'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'ac002a39824133f8205ce4fc11697770f52b8eec5e5d6daf5f15817485ecb71f'
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
