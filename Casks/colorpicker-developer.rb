cask :v1 => 'colorpicker-developer' do
  version :latest
  sha256 :no_check

  url 'http://download.panic.com/picker/developercolorpicker.zip'
  homepage 'http://download.panic.com/picker/'
  license :unknown

  colorpicker 'Developer Color Picker/DeveloperColorPicker.colorPicker'
end
