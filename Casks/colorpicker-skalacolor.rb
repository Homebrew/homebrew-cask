cask :v1 => 'colorpicker-skalacolor' do
  version '2.10'
  sha256 '18205f0e827116de72822064f7b10f624bb6696f90bd067e4ba90a18acba34a2'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/bjango/files/skalacolor/skalacolor#{version}.zip"
  name 'Skala Color'
  homepage 'http://bjango.com/mac/skalacolor/'
  license :gratis

  colorpicker 'Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker'
end
