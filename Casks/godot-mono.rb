cask "godot-mono" do
  version "3.4.4"
  sha256 "f1958336cf79fd777749ebe1313786ba86ab9c0293cbefe1aecdb54053a425ab"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"
end
