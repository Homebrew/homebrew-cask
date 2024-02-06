cask "lightburn" do
  version "1.5.00"
  sha256 "249fcfbbd7abe11b85d997476765111727e51c1dd2a9f9fe9c81fd048f4e4331"

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
