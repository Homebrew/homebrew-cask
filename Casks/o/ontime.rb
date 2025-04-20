cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.15.0"
  sha256 arm:   "45432d2a85c195a92bee125e315670f20ab35e433af25599d7a0ae3abf2678a4",
         intel: "9669d34fa3701f371c65bae1740d9cb269fe613d865581ce1c4ec15f77342cfa"

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
