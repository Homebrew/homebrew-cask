cask :v1 => 'colorpicker-skalacolor' do
  version '2.0'
  sha256 '9b99e02f6310284b1551a7af51f5782db847e9521d4bdd6f6a9c65c0a97ccd72'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/bjango/files/skalacolor/skalacolor#{version}.zip"
  name 'Skala Color'
  homepage 'http://bjango.com/mac/skalacolor/'
  license :gratis

  colorpicker 'Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker'
end
