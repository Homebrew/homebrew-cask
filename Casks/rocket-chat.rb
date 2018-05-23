cask 'rocket-chat' do
  version '2.10.5'
  sha256 '9f705df5e854de293b7c339c453cf6c67e6ae3b2a2ddb12218a9859086ce4774'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#{version}/rocketchat-#{version}.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: 'dd61516f838a408422c9b13a478c2c3f77ea9a227d37e8772d7b2f24b01c7a02'
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
