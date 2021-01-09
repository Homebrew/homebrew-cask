cask "godot" do
  version "3.2.3"
  sha256 "196dc7319dc40f9b4ee5626371a4cb6d7227eda3c439023630f314b57a581672"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/Godot_v#{version}-stable_osx.64.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot/releases"
    strategy :git
    regex(/^(\d+(?:\.\d+)*)-stable$/)
  end

  app "Godot.app"
end
