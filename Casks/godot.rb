cask "godot" do
  version "4.0.1"
  sha256 "7386e9cdcd7d83340ecc424fee774b56cce0a9ba290d308097451ec23bfa685f"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_macos.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "Game development engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  app "Godot.app"
  binary "#{appdir}/Godot.app/Contents/MacOS/Godot", target: "godot"

  uninstall quit: "org.godotengine.godot"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
