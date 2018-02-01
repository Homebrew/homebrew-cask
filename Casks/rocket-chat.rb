cask 'rocket-chat' do
  version '2.10.2'
  sha256 '063c97e81a7b1e6946c51df72200d61285c4d476c90ccc413f0f260bfd91c6b8'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '8d80b30869ac3da7a1266381624954bd877e830a87f926ff8e9d97a98ba3fc81'
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
