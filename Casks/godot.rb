cask 'godot' do
  version '3.2'
  sha256 '3b85748ed69db31e7c024a06df863f228e2f5ed8cf0587551bc64ce72b498c88'

  # downloads.tuxfamily.org/godotengine was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  app 'Godot.app'
end
