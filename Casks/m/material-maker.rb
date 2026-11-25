cask "material-maker" do
  version "1.8"
  sha256 "2549aa9c18b71550355b752e03a1afd5a199dc7f56eafb371c06b721182ef3d8"

  url "https://github.com/RodZill4/material-maker/releases/download/#{version}/material_maker_#{version.dots_to_underscores}.dmg"
  name "Material Maker"
  desc "Procedural material authoring and 3D painting tool based on the Godot Engine"
  homepage "https://rodzilla.itch.io/material-maker"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+(?:p\d+)?)/i)
  end

  depends_on :macos

  app "Material Maker.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/material_maker*.plist",
    "~/Library/Application Support/material_maker*",
    "~/Library/Saved Application State/com.rodzlabs.materialmaker.savedState",
  ]
end
