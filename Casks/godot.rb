cask "godot" do
  version "3.3.1"
  sha256 "205734a8d15f506a383d610f057491bdc51dc65cb5a3a57b94801e66855da944"

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
