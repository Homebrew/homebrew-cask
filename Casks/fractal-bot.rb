cask 'fractal-bot' do
  version '3.00.03'
  sha256 '743ac35aa8b37b485ab24bc5b507828ddb2d303be12152b67360cfe098c1a0d1'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/',
          configuration: "#{version.tr('.', 'p')}.dmg"
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  app 'Fractal-Bot.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
