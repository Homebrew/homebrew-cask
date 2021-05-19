cask "godot" do
  version "3.3.1"
  sha256 "f490a91e840ada5f6cc1db030e2d6950ae58583b388e763484e9b5a16cbdcaf7"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "Game development engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot/releases"
    strategy :git
    regex(/^(\d+(?:\.\d+)*)-stable$/)
  end

  app "Godot.app"
end
