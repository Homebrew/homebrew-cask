cask 'fractal-bot' do
  version '2p11p1'
  sha256 'f03e4760201eca07e64246945eb2df61fac2f45e9394d29ff21ea330b89111f9'

  url "https://www.fractalaudio.com/downloads/fractal-bot/Fractal-Bot-OSX-v#{version}.dmg"
  appcast 'https://www.fractalaudio.com/fractal-bot/'
  name 'Fractal Bot'
  homepage 'https://www.fractalaudio.com/fractal-bot/'

  pkg "Fractal-Bot-OSX-v#{version}.pkg"

  uninstall pkgutil: 'com.fractalaudio.fractalAudioSystemsFractalbot.Fractal-Bot.pkg'

  zap trash: '~/Library/Application Support/Fractal Audio/Fractal-Bot'
end
