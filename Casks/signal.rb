cask 'signal' do
  version '1.0.40'
  sha256 '5b4ae797fba7687a5ec22906af9713e05b27f899b4f8a82f883b643937d06a99'

  url "https://updates.signal.org/desktop/Signal-mac-#{version}.zip"
  appcast 'https://github.com/WhisperSystems/Signal-Desktop/releases.atom',
          checkpoint: 'fead8006f28924ff4e3e643670ac4d888edccebc5ee5902692c742a1ac8e77f2'
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
