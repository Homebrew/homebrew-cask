cask 'godot' do
  version '3.1.2'
  sha256 '23d26e8e6cd6172a75501916fb6142ec50bb7a21ad7c7e26665de99102852ea6'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
