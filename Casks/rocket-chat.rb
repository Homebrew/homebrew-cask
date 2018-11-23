cask 'rocket-chat' do
  version '2.14.4'
  sha256 '41e07082287c1cd54c1f4f4dde3b234c03e2af6c5a591ffc0123f7bf0f95337b'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'

  app 'Rocket.Chat.app'

  zap trash: [
               '~/Library/Application Support/Rocket.Chat',
               '~/Library/Caches/chat.rocket',
               '~/Library/Caches/chat.rocket.ShipIt',
               '~/Library/Caches/chat.rocket.electron.helper',
               '~/Library/Preferences/chat.rocket.plist',
               '~/Library/Preferences/chat.rocket.electron.helper.plist',
               '~/Library/Saved Application State/chat.rocket.savedState',
             ]
end
