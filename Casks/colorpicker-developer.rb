cask :v1 => 'colorpicker-developer' do
  version :latest
  sha256 :no_check

  url 'https://download.panic.com/picker/developercolorpicker.zip'
  name 'Developer Color Picker'
  homepage 'https://download.panic.com/picker/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  colorpicker 'Developer Color Picker/DeveloperColorPicker.colorPicker'
end
