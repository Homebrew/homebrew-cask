cask "backyard-ai" do
  arch arm: "Arm64"

  version "0.37.0"
  sha256 :no_check

  url "https://desktop.backyard.ai/download/dmg#{arch}"
  name "Backyard AI"
  desc "Run AI models locally"
  homepage "https://backyard.ai/"

  deprecate! date: "2026-09-20", because: :discontinued

  depends_on :macos

  app "Backyard AI.app"

  zap trash: [
    "~/Library/Preferences/com.ahoylabs.faraday.plist",
    "~/Library/Saved Application State/com.ahoylabs.faraday.savedState",
  ]
end
