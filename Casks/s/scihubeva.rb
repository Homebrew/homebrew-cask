cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.4.0"
  sha256 arm:   "9e5c8ea56677e7784b3f1591e678a07d9192eb805237a763c670559ff594a6fe",
         intel: "cc15295a306590ea8a58ef1c62b23482af84a8d47926184a407ac6966d82d41b"

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
