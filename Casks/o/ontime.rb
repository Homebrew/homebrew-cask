cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.2.0"
  sha256 arm:   "60580601da873cf25cde12e6ad05c91e90daafa48d45ed2bb1227b9dcad18221",
         intel: "59bc0ac8950cab609135e9a9cb20a16675d4367c3a60052b8aec3cb118ec2774"

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
