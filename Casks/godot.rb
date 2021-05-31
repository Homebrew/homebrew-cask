cask "godot" do
  version "3.3.2"
  sha256 "78717ab9e1eff5c320bfc59be50ffd86ff88840cb7c786bb6fb6b8c9cebb4b06"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "Game development engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/)
  end

  app "Godot.app"
end
