cask 'godot' do
  version '3.0'
  sha256 '38f7ba325c03dfe5efa7d311bf9637b2d03ae2a6572c7504a39a226102db8bfb'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: 'c61e0792af716aa733050c3214904b6e86029dc4e760914ae8d79f56286782ed'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
