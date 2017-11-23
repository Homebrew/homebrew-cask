cask 'signal' do
  version '1.0.39'
  sha256 '957b55782351d912f7261a3018e6f2be87a5fa9c130271b45a753cc81882a251'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: '7bd0f4cd30a17d56bcd93ff7df8979fa990be88f064f93a79f50046011e60864'
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
