cask 'signal' do
  version '1.9.0'
  sha256 'b04f6cdfc01a2593c6e474f13d12f011f644348000fe887c249498f3854926a8'

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{version}.zip"
  appcast 'https://github.com/signalapp/Signal-Desktop/releases.atom',
          checkpoint: 'f830de874ec61590e2d613ee29ddb73c90a2adebfa70e5569bc80d16dcd98074'
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
