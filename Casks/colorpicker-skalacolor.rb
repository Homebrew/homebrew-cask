cask :v1 => 'colorpicker-skalacolor' do
  version :latest
  sha256 :no_check

  url 'http://download.bjango.com/skalacolor/'
  name 'Skala Color'
  homepage 'http://bjango.com/mac/skalacolor/'
  license :gratis

  colorpicker 'Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker'
end
