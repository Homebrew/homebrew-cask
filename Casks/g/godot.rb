cask "godot" do
  version "4.1.3"
  sha256 "a6c8e41b7eea4b02c2d27bc2d1e3246189a86081a7ef4cd65443ac01d922e785"

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
