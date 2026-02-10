cask "material-maker" do
  version "1.5"
  sha256 "c0c16aae6d440710a294aa7b36c45a432afe06b6382f394b5fd8d494dec7137c"

  url "https://github.com/RodZill4/material-maker/releases/download/#{version}/material_maker_#{version.dots_to_underscores}.dmg",
      verified: "github.com/RodZill4/material-maker/"
  name "Material Maker"
  desc "Procedural material authoring and 3D painting tool based on the Godot Engine"
  homepage "https://rodzilla.itch.io/material-maker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Material Maker.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/material_maker*.plist",
    "~/Library/Application Support/material_maker*",
    "~/Library/Saved Application State/com.rodzlabs.materialmaker.savedState",
  ]
end
