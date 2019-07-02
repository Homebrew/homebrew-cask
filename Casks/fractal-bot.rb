cask 'fractal-bot' do
  version '3.00.0'
  sha256 'b1def5f2edf634cd93f3671766e76cbb64eb6ef4a97bf31ba88d960155fb95b4'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version.tr('.', 'p')}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/'
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  pkg "Fractal-Bot-OSX-v#{version.tr('.', 'p')}.pkg"

  uninstall pkgutil: 'com.fractalaudio.fractalAudioSystemsFractalbot.Fractal-Bot.pkg'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
