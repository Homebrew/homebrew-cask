cask 'godot' do
  version '3.0.1'
  sha256 '6a04ed482cf51631257fdc2ad6de82dd0504700e3edf631f023d6fa6058e3a46'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '35fd1b2901289a82c3e5e9a19d7c617050c583e60ce3fde619da5dd8f3e440c5'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
