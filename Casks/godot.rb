cask "godot" do
  version "4.0.2"
  sha256 "84a22751ed09e723f631c15c9e9490c5b8d86cd5cdd9e362137581b3771d193e"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_macos.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "Game development engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  conflicts_with cask: "homebrew/cask-versions/godot3"

  app "Godot.app"
  binary "#{appdir}/Godot.app/Contents/MacOS/Godot", target: "godot"

  uninstall quit: "org.godotengine.godot"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
