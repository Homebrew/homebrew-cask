cask 'colorpicker-rcwebcolorpicker' do
  version '1.2.X'
  sha256 '04a1965f756695ef0387e388aceb598d3fcde39ec82119d298bf3802f09b3f70'

  url "http://www.rubicode.com/Downloads/RCWebColorPicker-#{version}.dmg"
  appcast 'http://www.rubicode.com/Software/RCWebColorPicker/',
          checkpoint: '686fc36323556f4c008445f6b31c1b0834c8658c0af5f8df1e9d79433f3d8888'
  name 'RCWebColorPicker'
  homepage 'http://www.rubicode.com/Software/RCWebColorPicker/'

  colorpicker 'RCWebColorPicker.colorPicker'
end
