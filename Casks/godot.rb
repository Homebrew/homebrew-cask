cask 'godot' do
  version '2.1.2'
  sha256 'ca831d5654271f0c3b8a0bf948158b23e49570a39a0ff3ed376e2b836d5e9da7'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '2a236ab77cfb11a6478b72a02a3e76283ad26ecea4c30c61734d348212e42aba'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
