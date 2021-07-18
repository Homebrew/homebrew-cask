cask "godot-mono" do
  version "3.3.2"
  sha256 "a858f2b75fbe023d7bbd0431179d7f695133422fee5201a90b8764adef8b615b"

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
