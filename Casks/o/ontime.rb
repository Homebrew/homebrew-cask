cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.10.3"
  sha256 arm:   "686c92fcdc6fae4bf546688b6b7468727a1358c70c068ac80f8240469444c58c",
         intel: "457678185a0cea3068167a28803654eff0afe68eb235ccb1b3a482b6a4007818"

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
