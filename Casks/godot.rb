cask "godot" do
  version "3.2.3"
  sha256 "196dc7319dc40f9b4ee5626371a4cb6d7227eda3c439023630f314b57a581672"

  # downloads.tuxfamily.org/godotengine/ was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip"
  appcast "https://github.com/godotengine/godot/releases.atom"
  name "Godot Engine"
  homepage "https://godotengine.org/"

  app "Godot.app"
end
