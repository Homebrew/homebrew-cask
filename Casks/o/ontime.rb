cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.11.0"
  sha256 arm:   "9066d78facf18e434bac67f6c3b0944239066d1818c43536bf3c47c6ce0f8f28",
         intel: "243e9185f20b76a0bfea4cd6dfea694c8fad2e589cd38e5e2a57cb4adf16f190"

  url "https://github.com/cpvalente/ontime/releases/download/v#{version}/ontime-macOS-#{arch}.dmg",
      verified: "github.com/cpvalente/ontime/"
  name "Ontime"
  desc "Time keeping for live events"
  homepage "https://getontime.no/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
