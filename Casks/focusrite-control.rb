cask 'focusrite-control' do
  version '2.1.5'
  sha256 '9faf8a1e2f51e9638c155238cb1ec85a74028cd065813d8717a53d7d72350b7e'

  # d3se566zfvnmhf.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3se566zfvnmhf.cloudfront.net/sites/default/files/focusrite/downloads/31868/focusrite-control-#{version}.dmg"
  name 'Focusrite Control'
  homepage 'https://us.focusrite.com/downloads?product=Scarlett+18i8'

  pkg 'Focusrite Control.pkg'

  uninstall pkgutil: [
                       'com.focusrite.FocusriteControl',
                       'com.focusrite.pkg.FocusritePCIe.audio_driver',
                       'com.focusrite.pkg.FocusritePCIe.midi_driver',
                     ]
end
