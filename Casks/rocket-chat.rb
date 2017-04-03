cask 'rocket-chat' do
  version '2.6.0'
  sha256 '0f9152def587c2f536b1fc66934a2ad26a10c60511e96504d69e7e466769652f'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '6156c07ebb4af0119b88f9417bc231dff1756c4e2f85d0377ca43d9ab1bbe3ef'
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
