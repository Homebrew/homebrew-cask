cask 'deckard' do
  version '0.4.1'
  sha256 '8bbb38bbf68fa72b141972ddfc2a4fa85a02cfdaed30c13a3d012d4d92d57501'

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
