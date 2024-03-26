cask "lightburn" do
  version "1.5.06"
  sha256 "6e2f86fbdb6c42387e8623b846051b67e6122352575d38493a28c0b64f73e5eb"

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
