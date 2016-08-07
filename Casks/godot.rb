cask 'godot' do
  version '2.0.3'
  sha256 '477ef5de5909a4b42fb408327554252ce8da2ede8ba522f36f724d7cca1cdc4b'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}_stable_osx64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: 'eb4ed6f28e234b348b78db937c4ee160150dd41b7a12e13b85d8a04207107afe'
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
