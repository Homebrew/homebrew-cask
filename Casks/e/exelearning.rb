cask "exelearning" do
  version "4.0.1"
  sha256 "c9931d9df07397d22f1c58ce48e7bbd898167e76063c3454ce9c0787cde8836d"

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
