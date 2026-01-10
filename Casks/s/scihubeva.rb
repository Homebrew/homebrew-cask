cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.4.1"
  sha256 arm:   "d76c455635b642d1e0866b27c8ffad5896cb5e923ff7b035dcf92abc6eac2204",
         intel: "12e6ab3dbc577ee5c56b4226d129e6d5d83eb3ef6698d992e1581563b48417c1"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-#{arch}-v#{version}.dmg"
  name "Sci-Hub EVA"
  desc "Cross-platform Sci-Hub GUI application powered by Python and Qt"
  homepage "https://github.com/leovan/SciHubEVA"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sci-Hub EVA.app"

  zap trash: [
    "~/Library/Caches/tech.leovan.SciHubEVA",
    "~/Library/Logs/leovan.tech/SciHubEVA",
    "~/Library/Preferences/tech.leovan.SciHubEVA.plist",
    "~/Library/Saved Application State/tech.leovan.SciHubEVA.savedState",
  ]
end
