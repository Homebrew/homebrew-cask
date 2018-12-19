cask 'godot-mono' do
  version '3.0.6'
  sha256 '7ddd0c4f0b03be4f82e12072b05130c6f78fe79d0e62720bb7e095532a46d420'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app 'Godot_mono.app'
end
