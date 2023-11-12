cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.4"
  sha256 arm:   "09ed1c3be4930da5548fbe6e30b7a054ecb839e8b0dfb38e2594fb27b32a9840",
         intel: "581e6fc94c7cf4a72e2b312a414e3fa5e347ce8eef9f84960c6b2a7627483304"

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
