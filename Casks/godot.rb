cask 'godot' do
  version '1.1'
  sha256 'b09dc985b08fa979a8ee830806e2fae2cf0b8a1c3b0da80f6881c3451f670f3d'

  # bintray.com is the official download host per the vendor homepage is not found anymore
  url "https://bintray.com/artifact/download/punto/godot-relese/GodotOSX32-#{version}stable.zip"
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
