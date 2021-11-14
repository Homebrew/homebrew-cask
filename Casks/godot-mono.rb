cask "godot-mono" do
  version "3.4"
  sha256 "6a11db0c9591dd0a85ae71abd967db049d56533f4a3b273359c27c432363e8bd"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.universal.zip",
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
