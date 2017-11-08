cask 'rocket-chat' do
  version '2.10.0'
  sha256 'ee1b46aa60b638d5508da99e9b92e79ade65bf0c3160a5f196d1661aebe34eff'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: 'a6273d5d694155bd29115d5cc56698aabba304a87f990ef2b220d4e7644f6838'
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
