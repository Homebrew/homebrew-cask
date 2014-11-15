cask :v1 => 'colorpicker-rcwebcolorpicker' do
  version '1.2.X'
  sha256 '04a1965f756695ef0387e388aceb598d3fcde39ec82119d298bf3802f09b3f70'

  url "http://www.rubicode.com/Downloads/RCWebColorPicker-#{version}.dmg"
  homepage 'http://www.rubicode.com/Software/RCWebColorPicker'
  license :unknown

  colorpicker 'RCWebColorPicker.colorPicker'
end
