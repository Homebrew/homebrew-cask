cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.1"
  sha256 arm:   "cb6f540471d47b16b472f0e95befa3bc0a38681506bb864216807c1b3025a8ce",
         intel: "6d120685a5440578e15ce700e523fe38daff7b8d4bcfefbb9cbb2abb727ae6d5"

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
