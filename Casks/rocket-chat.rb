cask 'rocket-chat' do
  version '2.12.1'
  sha256 'c2a0fcc67b042a4096d7e7c70adac021a7531fbb4626cc9c3c93e19546332fd5'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'

  app 'Rocket.Chat+.app'

  zap trash: [
               '~/Library/Application Support/Rocket.Chat+',
               '~/Library/Caches/Rocket.Chat+',
               '~/Library/Caches/chat.rocket',
               '~/Library/Preferences/chat.rocket.plist',
               '~/Library/Saved Application State/chat.rocket.savedState',
             ]
end
