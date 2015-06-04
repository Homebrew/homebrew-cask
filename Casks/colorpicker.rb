cask :v1 => 'colorpicker' do
  version '1.7'
  sha256 'cb5aac90b50b5541bd3e9e17e365a23ce59031839de3a6c0c92901d40ee87db1'

  url "http://www.northernspysoftware.com/download/ColorPicker_#{version}.dmg"
  appcast 'http://www.northernspysoftware.com/feed/colorpicker.xml',
          :sha256 => 'e534a4e8a24ff6f3b315ca01e2c3442a8c2ce689b428b0d5f62bab1f538b0c62'
  name 'ColorPicker'
  homepage 'http://www.northernspysoftware.com/software/colorpicker'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ColorPicker.app'
end
