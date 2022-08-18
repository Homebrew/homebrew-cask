cask "godot-mono" do
  version "3.5"
  sha256 "341501d8eeb1715959dc1fb0fe6613d76e78be5a9375221ac46c2f5abfa1a55e"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"
end
