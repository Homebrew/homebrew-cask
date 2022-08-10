cask "godot-mono" do
  version "3.4.5"
  sha256 "5b40f382619b476fffdf6ff5656a0eb28a86cc635a9a6d0bedbae88ff4db1049"

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
