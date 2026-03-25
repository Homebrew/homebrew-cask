cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "4.6.0"
  sha256 arm:   "21f527ae47d8cef0178c85ee1f7e4b3f8374b16b2e3171afb240713d0976493c",
         intel: "f63294f2ffd637dfc7d2c9de4e56a17581c0465c9091ce73678444418a7ffc44"

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
