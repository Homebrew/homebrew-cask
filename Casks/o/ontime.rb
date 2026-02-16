cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.4.2"
  sha256 arm:   "f7c3456ec4439e52cf1010ca331256c65f778f3b0a65ce3c1ab3c4ba81a1f16c",
         intel: "98b8d349c79676bf1765539e74cf7bab9c7d441f5e8e39eb5f1ebe0462e7b5d4"

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
  depends_on macos: ">= :monterey"

  app "ontime.app"

  zap trash: [
    "~/Library/Application Support/ontime",
    "~/Library/Preferences/no.lightdev.ontime.plist",
    "~/Library/Saved Application State/no.lightdev.ontime.savedState",
  ]
end
