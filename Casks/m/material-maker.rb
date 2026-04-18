cask "material-maker" do
  version "1.6"
  sha256 "3b4e97beec81f46c1344f06ba4d379574c8e3f68a559f2abb851863a55928e33"

  url "https://github.com/RodZill4/material-maker/releases/download/#{version}/material_maker_#{version.dots_to_underscores}.dmg",
      verified: "github.com/RodZill4/material-maker/"
  name "Material Maker"
  desc "Procedural material authoring and 3D painting tool based on the Godot Engine"
  homepage "https://rodzilla.itch.io/material-maker"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+(?:p\d+)?)/i)
  end

  depends_on macos: ">= :big_sur"

  app "Material Maker.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/material_maker*.plist",
    "~/Library/Application Support/material_maker*",
    "~/Library/Saved Application State/com.rodzlabs.materialmaker.savedState",
  ]
end
