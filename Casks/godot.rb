cask 'godot' do
  version '3.2.2'
  sha256 '36d1002ad3a99314e03195f944b86b3d9b694ad4938a32e88c4ac51c7bf9b893'

  # downloads.tuxfamily.org/godotengine/ was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
