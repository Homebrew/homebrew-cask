cask "godot-mono" do
  version "3.5.1"
  sha256 "7e1baf9693ee9ce5518e0a0f2db3e2acc36d99118b67dcda3715304fb8dfb0ca"

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
