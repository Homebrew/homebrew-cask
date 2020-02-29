cask 'rocket-chat' do
  version '2.17.7'
  sha256 '9947df07e6b1f62c01443e899eae589b0b5899fc51ce88037c370375349d75d4'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
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
