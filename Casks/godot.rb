cask 'godot' do
  version '3.1.1'
  sha256 'bd6beb619c759988d6142a179b0cebe53ce26975e3e798cb124d9ed6d9b1c6e1'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
