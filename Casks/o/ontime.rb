cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.4.0"
  sha256 arm:   "9d39d16f78200e84b5faa0552fc4f1f98894318e736c9fe6d4a93e28386d325d",
         intel: "bc5e9beba88e46cf417b32118af0ac8db8c5d4c69f9adf38a1f9fb2e953bb994"

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
