cask 'rocket-chat' do
  version '2.10.4'
  sha256 '8ecd45afdde19587c617ece370dfd580371361810238a7f4ebc0e8d0a5e09985'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '7132fed3e6a8d6929df17aeadd3e5c8a4b596843a78e3dd673102f136de14eef'
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
