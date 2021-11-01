cask "godot-mono" do
  version "3.3.4"
  sha256 "6231791071fe63bc665ab1b8f6ee023e7665ab344061379323bdc499d82debad"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_osx.64.zip",
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
