cask "godot-mono" do
  version "3.3"
  sha256 "e18cf3be1164209a800a7d3a16b69ce281927ed50472b8c178398389cfc5a1dd"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot/releases"
    strategy :git
    regex(/^(\d+(?:\.\d+)*)-stable$/)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"
end
