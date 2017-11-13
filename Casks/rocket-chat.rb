cask 'rocket-chat' do
  version '2.10.1'
  sha256 '66a090a87922438953a073dd87bae3780315945e2a29552b5ed92546c83a6581'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '55489df75770a1c71d2a230462c195df63d5487b582f7615b4c8d64eaf4109e3'
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
