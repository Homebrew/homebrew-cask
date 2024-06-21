cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "1b0b3797324b7b4263e3f88e06f795ee5c12ab4fb9f67f36319491cda687cc7f",
         intel: "610b25f8f2166c089d1a5d8a77461a04d570f421e979708fdfe780589e08013f"

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
