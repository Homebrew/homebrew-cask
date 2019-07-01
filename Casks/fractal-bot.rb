cask 'fractal-bot' do
  version '3.00.00'
  sha256 'bcb6d63b0b4069bda5db02cb8d33509abe5c5aeba5a6fb67cdd62a97e9f57980'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/',
          configuration: "#{version.tr('.', 'p')}.dmg"
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  app 'Fractal-Bot.app'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
