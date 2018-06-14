cask 'godot-mono' do
  version '3.0.3'
  sha256 '84554bc4d0a6a427c7d289df3b73bbe18d03f974632a2d7e847746af74ff2524'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app "Godot_v#{version}-stable_mono_osx64.app"
end
