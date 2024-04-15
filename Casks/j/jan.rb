cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.11"
  sha256 arm:   "5b1b638a2f33ca95020d44da9bf8c4f46e0a205356282040c66d5e47bcfe5e04",
         intel: "27b5a12cd452273cea8e3677c2a7bfe0561436385e8b6b2ba8746c0033b4c03a"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
