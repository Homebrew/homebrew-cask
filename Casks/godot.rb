cask 'godot' do
  version '2.1.1'
  sha256 'acdf67b00f0fb283845caa869321f9aec680d20472d38c8eeacf8784f35e1fe2'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '85890c85d5db44e8ff3bea4f0df4afb218bb20539eabba3bc36e88d721eaa003'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
