cask 'colorschemer-studio' do
  version '2.0'
  sha256 '6c2fb0ac5fa628ab5cca6e9b34579e800824a50bc46d47b6c95da53403911163'

  url 'http://www.colorschemer.com/colorschemerstudio.dmg'
  appcast "http://www.colorschemer.com/appcast/studio#{version.major}_mac.xml",
          :checkpoint => 'f1ce725d37276bd75c7b4abd493208b4852bc487a10dcd602ef8df615ac0b453'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com'
  license :commercial

  app "ColorSchemer Studio #{version.major}.app"
end
