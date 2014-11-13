cask :v1 => 'color-picker-pro' do
  version :latest
  sha256 :no_check

  url 'https://fructivity.s3.amazonaws.com/ColorPickerPro/Color%20Picker%20Pro.zip'
  appcast 'http://fructivity.s3.amazonaws.com/ColorPickerPro/Appcast.xml'
  homepage 'https://github.com/oscardelben/Color-Picker-Pro'
  license :oss

  app 'Color Picker Pro.app'
end
