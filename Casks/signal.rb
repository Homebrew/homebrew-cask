cask 'signal' do
  version '1.3.0'
  sha256 '16464c0a3fa6f1cbf13f5163bb1cce5a413374056f84e8b3466bdcd5afbc1261'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: '0750ef434cd950cef8f1a36dbaa9ccec337c901ebaec22eb79e7ef2642d47049'
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
