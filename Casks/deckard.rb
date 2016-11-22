cask 'deckard' do
  version '0.4.0'
  sha256 '005b20436efe21ee99a64ce691c7fbebeface030b3d56cb49282c1ead3da495b'

  url "https://www.deckard.ai/download/#{version}.dmg"
  appcast 'https://www.deckard.ai/releases.html',
          checkpoint: '3dda621f0da54302086fd3d786641150b5fe1f1feffefc3c4489532d43b220de'
  name 'Deckard Assist'
  homepage 'https://www.deckard.ai/'

  auto_updates true

  app 'Deckard.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.deckard',
                '~/Library/Preferences/ai.deckard.ui.plist',
                '~/Library/Preferences/ai.deckard.ui.helper.plist',
                '~/Library/Application Support/deckard',
              ]
end
