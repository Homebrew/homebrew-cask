cask 'deckard' do
  version '0.5.2'
  sha256 '4c8ad7500292dd577f71579f831c6fc0ef5c00d7dc2afda1d6f8e608e96b3e35'

  url "https://www.deckard.ai/download/#{version}.dmg"
  appcast 'https://www.deckard.ai/releases.html',
          checkpoint: '084b7b44c107b182710e4217215430612eaecb82bbfe715a563e9db8f31376b5'
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
