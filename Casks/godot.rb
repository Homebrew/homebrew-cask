cask "godot" do
  version "4.1"
  sha256 "79b18a1a6ce5d56da75040abd88c2976ec93726372063e2cb82240604aa327e8"

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
