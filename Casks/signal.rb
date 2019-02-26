cask 'signal' do
  version '1.22.1'
  sha256 '777496e4b23f1d088383dfc9694deb646313a2020bd5cd17ab93f68be31d5317'

  url "https://github.com/micahflee/homebrew-cask-releases/releases/download/v1/signal-desktop-mac-#{version}.zip"
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
