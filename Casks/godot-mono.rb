cask "godot-mono" do
  version "3.4.4"
  sha256 "7091e7f6e215770986dce8da7a1d364e3fb8b06a1eff5f39a378dc2f30e83887"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/)
  end

  depends_on formula: "mono"

  app "Godot_mono.app"
end
