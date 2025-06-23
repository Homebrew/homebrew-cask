cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.16.0"
  sha256 arm:   "97c0685dc2d4f90a79f7067bbb59462aa626f7e684e6ef84c9e2beb401071929",
         intel: "8f3a9e8f4e9236214c10f2c3956730d5c2647fbe528d44ccaa29c7d63276df43"

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
