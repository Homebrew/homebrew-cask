cask 'colorschemer-studio' do
  version '2.0'
  sha256 '6c2fb0ac5fa628ab5cca6e9b34579e800824a50bc46d47b6c95da53403911163'

  url 'http://www.colorschemer.com/colorschemerstudio.dmg'
  appcast "http://www.colorschemer.com/appcast/studio#{version.major}_mac.xml",
          :sha256 => '9fd3d9a786da408e992218d8042820cd2d0aac551316dc91c4b8225c99fcd183'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com'
  license :commercial

  app "ColorSchemer Studio #{version.major}.app"
end
