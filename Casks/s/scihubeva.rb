cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.3.1"
  sha256 arm:   "0dc12804ee8730145fe03a1a5283f2be291c68341eccbce5fdc2c15a4337ad05",
         intel: "028b0ade8cc3f710e8b593f9b3b12ebe666933022c68cbd359777d00ce5185ba"

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
