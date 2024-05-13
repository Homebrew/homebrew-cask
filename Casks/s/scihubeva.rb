cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.3.0"
  sha256 arm:   "eed4ce700461c7dddefaa00d04505c2c6fed30a66db05a43621aef97bc74fddc",
         intel: "1fff0d926520a44eb00fff76e81807deb2576ef167652e433300a5d7e7ba5155"

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
