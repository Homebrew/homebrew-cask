cask :v1 => 'colorpicker' do
  version '1.7'
  sha256 'cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml',
          :sha256 => '52d78504cf610c23eb719c689cc997d5836d85b0a7e5d8cc5c5998af8190d5bd'
  name 'ColorPicker'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ColorPicker.app'
end
