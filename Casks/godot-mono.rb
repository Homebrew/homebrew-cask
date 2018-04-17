cask 'godot-mono' do
  version '3.0.2'
  sha256 '6451722d8154b878acd516f8e12fe53f5cf05fd12bc31c0017c3408fc9f5bba7'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '1f75e2ac01a411812c9cee3d4db561728b6eba1baed5186b92b659a6a938db15'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app "Godot_v#{version}-stable_mono_osx64.app"
end
