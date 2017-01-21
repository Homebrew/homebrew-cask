cask 'deckard' do
  version '0.5.0'
  sha256 '5a04e8c8dfe473fab0d9c7ce87eacb4ac7b517b17b426713e1e9a88cd07ed4bf'

  url "https://www.deckard.ai/download/#{version}.dmg"
  appcast 'https://www.deckard.ai/releases.html',
          checkpoint: 'aab4cf61e05273752804a8ca263bdc3400ffcc265fd03a3dcc07553c9cd2274d'
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
