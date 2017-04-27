cask 'godot' do
  version '2.1.3'
  sha256 'fd546d414d96742cc4154e55756187f42f642484b6bd2da65657aedb111274a5'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '0a1fa7501e5190262ae873c72225bdb1220a65c7f2aead1900fdf5909779d1b4'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
