cask 'colorschemer-studio' do
  version '2.0.1'
  sha256 '6c2fb0ac5fa628ab5cca6e9b34579e800824a50bc46d47b6c95da53403911163'

  url 'http://www.colorschemer.com/colorschemerstudio.dmg'
  appcast "http://www.colorschemer.com/appcast/studio#{version.major}_mac.xml",
          checkpoint: '5984524da1e43fbf7f16f4d7e4f2807b910157c08af4d29d8ca7b1c6fab66d5a'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com/'

  app "ColorSchemer Studio #{version.major}.app"
end
