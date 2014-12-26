cask :v1 => 'colorschemer-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.colorschemer.com/colorschemerstudio.dmg'
  appcast 'http://www.colorschemer.com/appcast/studio2_mac.xml'
  homepage 'http://www.colorschemer.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ColorSchemer Studio 2.app'
end
