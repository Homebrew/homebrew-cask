cask 'colorpicker-developer' do
  version :latest
  sha256 :no_check

  url 'https://download.panic.com/picker/developercolorpicker.zip'
  name 'Developer Color Picker'
  homepage 'https://download.panic.com/picker/'

  colorpicker 'Developer Color Picker/DeveloperColorPicker.colorPicker'
end
