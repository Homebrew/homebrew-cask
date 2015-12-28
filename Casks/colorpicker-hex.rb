cask 'colorpicker-hex' do
  version '1.6.1'
  sha256 'c35b00fbe1f6b0efcc4520a45deae15809729f3fec3dff8f4027789d26284089'

  url "http://wafflesoftware.net/hexpicker/download/HexColorPicker-#{version}.zip"
  name 'Hex Color Picker'
  homepage 'http://wafflesoftware.net/hexpicker/'
  license :bsd

  colorpicker 'Hex Color Picker/HexColorPicker.colorPicker'
end
