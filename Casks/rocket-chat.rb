cask 'rocket-chat' do
  version '2.17.10'
  sha256 'e53be81124b86218e3c2443ce5b08d11df71eacc59b96643cde0bb3b1e088119'

  # github.com/RocketChat/Rocket.Chat.Electron/ was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'

  auto_updates true

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
