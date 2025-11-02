cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "03f02234949ca0b41c43509fc00774a058b7409a9775575a3cdb72601a1f62b3",
         intel: "ef24445724734a5fac529397752d50758e07564435a53080d6737b0207ee15da"

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
