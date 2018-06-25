cask 'rocket-chat' do
  version '2.11.0'
  sha256 '461c95297639728ac295cb86bb953c92606353f87adc51b771b331ad864dccb5'

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
