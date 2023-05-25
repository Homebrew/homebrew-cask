cask "scihubeva" do
  version "6.1.0"
  sha256 "324ff6867fc26d9d163e18244637a871f896c8a12dca69a194f2ee0d0852a169"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-v#{version}.dmg"
  name "SciHubEVA"
  desc "Sci-Hub GUI app"
  homepage "https://github.com/leovan/SciHubEVA"

  app "SciHubEVA.app"

  zap trash: [
    "~/Library/Caches/LeoVan",
    "~/Library/Logs/LeoVan",
    "~/Library/Preferences/me.leovan.SciHubEVA.plist",
    "~/Library/Preferences/SciHubEVA.plist",
    "~/Library/Saved Application State/SciHubEVA.savedState",
  ]
end
