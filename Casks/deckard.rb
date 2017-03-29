cask 'deckard' do
  version '0.6.1'
  sha256 'b12283cf03904975bb30c8c1cd58a7cc6679b7c378fc1d79326c77464afaaef5'

  url "https://www.deckard.ai/download/#{version}.dmg"
  appcast 'https://www.deckard.ai/releases.html',
          checkpoint: '7c876ac2b663a396d913a26a4f97545945f2748bc25a3bb594fedadc4ff3086e'
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
