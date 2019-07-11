cask 'fractal-bot' do
  version '3.00.01'
  sha256 '2a2ec1eaaa7d92ad8097637bfdb37ddb9c4030fb9f29e3da72680b6d86a1da02'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/',
          configuration: "#{version.tr('.', 'p')}.dmg"
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  app 'Fractal-Bot.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
