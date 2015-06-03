cask :v1 => 'godot' do
  version '1.1'
  sha256 'b09dc985b08fa979a8ee830806e2fae2cf0b8a1c3b0da80f6881c3451f670f3d'

  url 'https://godot.blob.core.windows.net/release/2015-05-21/GodotOSX32-1.1stable.zip'
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
