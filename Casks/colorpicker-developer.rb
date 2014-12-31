cask :v1 => 'colorpicker-developer' do
  version :latest
  sha256 :no_check

  url 'http://download.panic.com/picker/developercolorpicker.zip'
  homepage 'http://download.panic.com/picker/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  colorpicker 'Developer Color Picker/DeveloperColorPicker.colorPicker'
end
