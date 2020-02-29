cask 'fractal-bot' do
  version '3.00.04'
  sha256 '3f06a22ab3ad5fd4f9a327af470ac405d5cfc732c6d430291fd476fb54ad9b4a'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/',
          configuration: "#{version.tr('.', 'p')}.dmg"
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  app 'Fractal-Bot.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
