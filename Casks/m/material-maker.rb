cask "material-maker" do
  version "1.4"
  sha256 "653cde79a6e0d1e6f705720b43ed864af4ee03b414bbfe44ae04af41030e4ce8"

  url "https://github.com/RodZill4/material-maker/releases/download/#{version}/material_maker_#{version.dots_to_underscores}.dmg",
      verified: "github.com/RodZill4/material-maker/"
  name "Material Maker"
  desc "Procedural material authoring and 3D painting tool based on the Godot Engine"
  homepage "https://rodzilla.itch.io/material-maker"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Material Maker.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/material_maker*.plist",
    "~/Library/Application Support/material_maker*",
    "~/Library/Saved Application State/com.rodzlabs.materialmaker.savedState",
  ]
end
