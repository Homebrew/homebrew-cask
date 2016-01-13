cask 'colorpicker' do
  version '1.7'
  sha256 'cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml',
          :checkpoint => 'bae3e0c3a6364d8866b39c278c3231046763529d72673b9cb2b6919be44ed36d'
  name 'ColorPicker'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'
  license :gratis

  app 'ColorPicker.app'
end
