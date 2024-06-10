cask "material-maker" do
  version "1.3"
  sha256 "0f88cf40438ac2cd8915cce1d0ae79991d3c8c804c53a8ce14e9ba4f21719edf"

  url "https://github.com/RodZill4/material-maker/releases/download/#{version}/material_maker_#{version.dots_to_underscores}.dmg",
      verified: "github.com/RodZill4/material-maker/"
  name "Material Maker"
  desc "Procedural material authoring and 3D painting tool based on the Godot Engine"
  homepage "https://rodzilla.itch.io/material-maker"

  depends_on macos: ">= :sierra"

  app "material_maker.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/material_maker*.plist",
    "~/Library/Application Support/material_maker",
    "~/Library/Saved Application State/com.rodzlabs.materialmaker.savedState",
  ]
end
