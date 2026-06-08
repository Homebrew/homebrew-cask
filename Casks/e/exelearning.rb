cask "exelearning" do
  version "4.0.0"
  sha256 "eca0c3983e9b2b7b8895edb79537e9fa7dcc345767d95c8d47457b725a2780a3"

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
