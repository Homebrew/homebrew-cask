cask 'godot' do
  version '3.0.6'
  sha256 'cd409615685d3b497b14cb774bbb315fb0a7a45a00c6865edbb2e43cc735a759'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
