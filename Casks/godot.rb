cask 'godot' do
  version '2.1'
  sha256 '3ddb6c9835452d47b2ca5938dafa91dc494326ed86f9b85eeb15da0bb7830cd4'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '8b2350fbd6f0bb87d745efa146aca9fb9941e272ab722a7876282c0cca440435'
  name 'Godot Engine'
  homepage 'https://www.godotengine.org/'

  app 'Godot.app'
end
