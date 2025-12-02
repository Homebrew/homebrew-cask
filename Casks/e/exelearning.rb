cask "exelearning" do
  version "3.0.1"
  sha256 "e792d2fa73f462339a18f1b651c675f2b31dda1176f40b73bce220d4d4f84698"

  url "https://github.com/exelearning/exelearning/releases/download/v#{version}/eXeLearning-#{version}-universal.dmg",
      verified: "github.com/exelearning/exelearning/"
  name "eXeLearning"
  desc "Authoring tool to create educational resources"
  homepage "https://exelearning.net/"

  depends_on macos: ">= :monterey"

  app "eXeLearning.app"

  zap trash: [
    "~/Library/Application Support/exelearning",
    "~/Library/Caches/es.intef.exelearning",
    "~/Library/Caches/es.intef.exelearning.ShipIt",
    "~/Library/Caches/exelearning",
    "~/Library/Caches/exelearning-updater",
    "~/Library/HTTPStorages/es.intef.exelearning",
    "~/Library/Preferences/es.intef.exelearning.plist",
  ]
end
