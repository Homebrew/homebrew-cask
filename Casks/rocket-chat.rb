cask 'rocket-chat' do
  version '2.5.0'
  sha256 '3a02d3dc3b4b6990cb14f896fa3634a116ce91caf9001af1b35bc933b09f8776'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '0958130509ca0a7e781b733c619bf08cebbbb2c0440c549e8c2c72d1deb9700c'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'

  app 'Rocket.Chat+.app'

  zap delete: [
                '~/Library/Application Support/Rocket.Chat+',
                '~/Library/Caches/Rocket.Chat+',
                '~/Library/Caches/chat.rocket',
                '~/Library/Preferences/chat.rocket.plist',
                '~/Library/Saved Application State/chat.rocket.savedState',
              ]
end
