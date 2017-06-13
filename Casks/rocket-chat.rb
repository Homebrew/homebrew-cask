cask 'rocket-chat' do
  version '2.8.0'
  sha256 '926dd85dffd33f4aa57dc4c361e7a3c6d38ea3ed0ef8527ff3a06cabd9334628'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '73b32f56f373bfd3dd92d30f6d52f42ecf45402dfc5d011327a7582fa6c78173'
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
