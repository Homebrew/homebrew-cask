cask "godot-mono" do
  version "4.1"
  sha256 "5c8b8d8fda5f4ff113433b4425eba4944e4d55f55810ff184a34103cca4028ca"

  url "https://downloads.tuxfamily.org/godotengine/#{version}/mono/Godot_v#{version}-stable_mono_macos.universal.zip",
      verified: "downloads.tuxfamily.org/godotengine/"
  name "Godot Engine"
  desc "C# scripting capable version of Godot game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url "https://github.com/godotengine/godot"
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
  end

  depends_on cask: "dotnet-sdk"

  app "Godot_mono.app"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
