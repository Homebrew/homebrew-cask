cask "godot-mono" do
  version "3.2.2"
  sha256 "84c99d3dbd151a9f088c5cf3dd99f2185c43af2ab650bb11ec37404907e76ec6"

  # downloads.tuxfamily.org/godotengine/ was verified as official when first introduced to the cask
  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip"
  appcast "https://github.com/godotengine/godot/releases.atom"
  name "Godot Engine"
  homepage "https://godotengine.org/"

  depends_on formula: "mono"

  app "Godot_mono.app"
end
