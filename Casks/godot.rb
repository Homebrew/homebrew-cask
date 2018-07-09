cask 'godot' do
  version '3.0.5'
  sha256 '0d402559bc1d342e1c98b6905cdff423c91141ac890ee782d3b6f1e9b9d97036'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
