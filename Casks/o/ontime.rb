cask "ontime" do
  arch arm: "arm64", intel: "x64"

  version "3.9.4"
  sha256 arm:   "fb77cf47853450a7a48666c9aa9e230b94c6e1476361600ff9b20d46f93ef7c2",
         intel: "dbb37153bac1be2815924329d0222b4b160369831cb188cdc86f619c59c34c35"

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
