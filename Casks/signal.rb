cask 'signal' do
  version '1.0.41'
  sha256 'af62ac48ff4108cab63504b07f105fe493b987434d59cda6d71b896095d0cab9'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '67705a293cd55a3e4b0c972b52ae94237f969d9f2a1138c87d91efa6cd3f637d'
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
