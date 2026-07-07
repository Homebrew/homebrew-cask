cask "exelearning" do
  version "4.0.2"
  sha256 "3a3aa4a16a980c3c32f1553b3a23abafa76e12a8f9a1925e34f4f375895a4c96"

  url "https://github.com/exelearning/exelearning/releases/download/v#{version}/eXeLearning-#{version}-universal.dmg",
      verified: "github.com/exelearning/exelearning/"
  name "eXeLearning"
  desc "Authoring tool to create educational resources"
  homepage "https://exelearning.net/"

  depends_on macos: :monterey

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
