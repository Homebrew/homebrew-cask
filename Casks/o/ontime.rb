cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.9.0"
  sha256 arm:   "5ff59c0e692679109d177edd2f19affc4973a1811d9e487882c31d35f37f11a3",
         intel: "8c41b8281597342a3259fb1b04fb3e5f7f87ce9b7a14d0c7800932edf82c7066"

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
