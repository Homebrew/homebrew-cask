cask 'godot' do
  version '3.0.4'
  sha256 'ba04c27d358f75ea48da6d9f28706c45b7e362ef2dd0305a7931e08f47b36ed7'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
