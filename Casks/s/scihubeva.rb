cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.2"
  sha256 arm:   "402e0878ec349322e6117a02366809a8736d1d436e0e6f652b71b7d669368f5d",
         intel: "a0c065176248b1cde455a84a63a925fb0cf4099f05684be23ef85a8abcbf4084"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-#{arch}-v#{version}.dmg"
  name "Sci-Hub EVA"
  desc "Cross-platform Sci-Hub GUI application powered by Python and Qt"
  homepage "https://github.com/leovan/SciHubEVA"

  app "Sci-Hub EVA.app"

  zap trash: [
    "~/Library/Caches/tech.leovan.SciHubEVA",
    "~/Library/Logs/leovan.tech/SciHubEVA",
    "~/Library/Preferences/tech.leovan.SciHubEVA.plist",
    "~/Library/Saved Application State/tech.leovan.SciHubEVA.savedState",
  ]
end
