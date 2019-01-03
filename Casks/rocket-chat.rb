cask 'rocket-chat' do
  version '2.14.6'
  sha256 'f71cfa91a652ba83e67211078c766ba2ac0e12ac65d5d00d7980c3331b3ffaf9'

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
