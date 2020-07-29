cask 'godot' do
  version '3.2.1'
  sha256 'bf03a9430d53ed1f748f25d8840cba109f99e1d5d11ae8b23535a0b75286ec95'

  # downloads.tuxfamily.org/godotengine/ was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
