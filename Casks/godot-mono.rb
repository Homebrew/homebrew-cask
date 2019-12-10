cask 'godot-mono' do
  version '3.1.1'
  sha256 '631e81b7f72284b132386e44caf7c2702a908b381cb1bcfafa412420213d2051'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app 'Godot_mono.app'
end
