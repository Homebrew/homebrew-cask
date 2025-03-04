cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.14.0"
  sha256 arm:   "40d0383d1b8098b5f2cb04a571a638cfbaae2da53be43109b2465a6fb862ff88",
         intel: "f1aa9962bf8b9abef04cf6517f5a734754c85e4791e408a303fae6521b3099a1"

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
  depends_on macos: ">= :catalina"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
