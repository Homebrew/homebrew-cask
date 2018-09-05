cask 'colorpicker-skalacolor' do
  version '2.10'
  sha256 '18205f0e827116de72822064f7b10f624bb6696f90bd067e4ba90a18acba34a2'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/skalacolor/skalacolor#{version}.zip"
  name 'Skala Color'
  homepage 'https://bjango.com/mac/skalacolor/'

  colorpicker 'Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker'
end
