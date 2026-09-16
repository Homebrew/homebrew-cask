cask "exelearning" do
  version "4.0.5"
  sha256 "69f2468784f5db06a7d8ccb60fefe2830ec0a837651d3838d07e572a461bca3a"

  url "https://github.com/exelearning/exelearning/releases/download/v#{version}/eXeLearning-#{version}-universal.dmg"
  name "eXeLearning"
  desc "Authoring tool to create educational resources"
  homepage "https://exelearning.net/"

  depends_on macos: :ventura

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
