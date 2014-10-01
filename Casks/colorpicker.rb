class Colorpicker < Cask
  version '1.6.1'
  sha256 '23f2e782e20ff172b06746803ad2879ab5e7208dc04818a1716c18249d1e360d'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'
  license :unknown

  app 'ColorPicker.app'
end
