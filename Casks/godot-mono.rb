cask 'godot-mono' do
  version '3.2.1'
  sha256 'aaede8ad074da8cfe39f179af2eb7d2fe7776391a06d9236c65e426af87a8392'

  # downloads.tuxfamily.org/godotengine/ was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom'
  name 'Godot Engine'
  homepage 'https://godotengine.org/'

  depends_on formula: 'mono'

  app 'Godot_mono.app'
end
