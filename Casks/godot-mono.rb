cask 'godot-mono' do
  version '3.0.5'
  sha256 '22c2b83713e856bd34f490f5684be790a0a68eb0a0bb120c03f9a8826bf443b1'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app 'Godot_mono.app'
end
