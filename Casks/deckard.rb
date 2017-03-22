cask 'deckard' do
  version '0.6.0'
  sha256 'd50353a6135da1a607610916e6fbcc8433d863c31950fc2601681f780dfced58'

  url "https://www.deckard.ai/download/#{version}.dmg"
  appcast 'https://www.deckard.ai/releases.html',
          checkpoint: '15a12a435743ca832c68ad7a71b2b5ed3c356130f44b5749c43e9a749ea31ca5'
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
