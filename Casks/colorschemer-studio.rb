cask :v1 => 'colorschemer-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.colorschemer.com/colorschemerstudio.dmg'
  appcast 'https://www.colorschemer.com/appcast/studio2_mac.xml'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com'
  license :commercial

  app 'ColorSchemer Studio 2.app'
end
