cask 'godot' do
  version '2.1.4'
  sha256 '90bd927eaec302e4b4e7739bba68271d0459cff2194e19c572cdf688800ec782'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.fat.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '5f75bd46a619b34c0ed03c23871f3eb38366614e656c819040e264e917b0dd1a'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
