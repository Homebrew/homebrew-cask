cask "clay" do
  arch arm: "-arm64"

  version "1.12.5"
  sha256 arm:   "212cc82fd8bd247c4c2f2aa6b9dfdcf57e32f8b4e151b4d1cdc09c0887c4ddb0",
         intel: "e42e216be55e9b1c2dbc92684e55078c9ab1195007f5b2cb839aa4a38afabcb1"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
