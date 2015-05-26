cask :v1 => 'godot' do
  version '1.0'
  sha256 '3ea4f8cee78e3a60415f64d6c62ad721c11c15d1fccfe79519f3b182f0a75897'

  url 'https://godot.blob.core.windows.net/release/2014-12-15/GodotOSX32-1.0stable.zip'
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
