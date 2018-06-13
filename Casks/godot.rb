cask 'godot' do
  version '3.0.3'
  sha256 'c4f20d16574a293d5e85cfd6f5c89aa8fc9196c57db68a84be9439319c9284e3'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
