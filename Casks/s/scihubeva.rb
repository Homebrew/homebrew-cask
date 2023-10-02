cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.3"
  sha256 arm:   "b0dc6dc4931169d52f454f79d30115ac66577b31c677bd98c1e14716b6f0db0d",
         intel: "f880354644a2287c3ee01fda5607b15f3b798a5e4bd06d63feab6dbb6e6734e3"

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
