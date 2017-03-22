cask 'colorschemer-studio' do
  version '2.0'
  sha256 '6c2fb0ac5fa628ab5cca6e9b34579e800824a50bc46d47b6c95da53403911163'

  url 'http://www.colorschemer.com/colorschemerstudio.dmg'
  appcast "http://www.colorschemer.com/appcast/studio#{version.major}_mac.xml",
          checkpoint: '8faf423e6e94caef34de09fc83c720ef2473d1a37bf4777a95717a814f73a722'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com/'

  app "ColorSchemer Studio #{version.major}.app"
end
