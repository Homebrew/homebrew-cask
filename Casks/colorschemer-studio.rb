cask 'colorschemer-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.colorschemer.com/colorschemerstudio.dmg'
  appcast 'https://www.colorschemer.com/appcast/studio2_mac.xml',
          :sha256 => '9fd3d9a786da408e992218d8042820cd2d0aac551316dc91c4b8225c99fcd183'
  name 'ColorSchemer Studio'
  homepage 'https://www.colorschemer.com'
  license :commercial

  app 'ColorSchemer Studio 2.app'
end
