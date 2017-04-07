cask 'deckard' do
  version '0.6.2'
  sha256 '053aef4eb4cf0774f43dbc87349580a2c03cc6bbcb0f81f50f7081bdda0e05a5'

  url "https://deckard.ai/download/#{version}.dmg"
  appcast 'https://deckard.ai/releases.html',
          checkpoint: '9ba55546518333367d58ae14849ee1a4a4a401416b798dde553bf40e837a7c9a'
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
