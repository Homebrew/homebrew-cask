cask :v1 => 'colorpicker-skalacolor' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/skalacolor/'
  homepage 'http://bjango.com/mac/skalacolor/'
  license :unknown    # todo: improve this machine-generated value

  colorpicker 'Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker'
end
