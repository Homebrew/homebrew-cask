cask "lightburn" do
  version "1.5.02"
  sha256 "429f99c3768c160083bd83173e51dc9f31d50f4298287d3531d536d92eea1891"

  url "https://github.com/LightBurnSoftware/deployment/releases/download/#{version}/LightBurn.V#{version}.dmg",
      verified: "github.com/LightBurnSoftware/deployment/"
  name "LightBurn"
  desc "Layout, editing, and control software for laser cutters"
  homepage "https://lightburnsoftware.com/"

  app "LightBurn.app"

  zap trash: [
    "~/Library/Preferences/com.LightBurnSoftware.LightBurn.plist",
    "~/Library/Preferences/LightBurn",
    "~/Library/Saved Application State/com.LightBurnSoftware.LightBurn.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
