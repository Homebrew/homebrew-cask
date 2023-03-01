cask "godot-mono" do
  version "4.0"
  sha256 "5ec01af38bd5f4096bc4c7b1999ccb7fbc7ebfd3f565ef6325739844b86c849c"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_macos.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "C# scripting capable version of Godot game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
