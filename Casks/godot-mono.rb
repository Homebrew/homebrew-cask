cask 'godot-mono' do
  version '3.0.4'
  sha256 '1354d4c80fe15ad8bef5ed342e3920c74f30b51113ca8e54cecd6e12dc42b13c'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app 'Godot_mono.app'
end
