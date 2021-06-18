cask "godot-mono" do
  version "3.3.1"
  sha256 "711ee04a6ec78b12bc3d4f2f592c77e9d7b5e52b661c6e33329bdfe45ed93ed6"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"
end
