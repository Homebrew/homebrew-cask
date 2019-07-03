cask 'fractal-bot' do
  version '3.0.0'
  sha256 '2774f8da135ac58d0897ec3ce427018354a746cd7bfafc55c7e602262bbb0170'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/',
          configuration: "#{version.tr('.', 'p')}.dmg"
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  app 'Fractal-Bot.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
