cask "godot" do
  version "4.0.3"
  sha256 "b8a0271b16399845bd18705d52ef39237d6cbb81c13aac2c5ab2707e217629ac"

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
