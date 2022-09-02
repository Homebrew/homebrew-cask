cask "clay" do
  arch arm: "-arm64"

  version "1.10.2"
  sha256 arm:   "7af50b6ed6aaf9c2b2082024ec8e27daaf85d4e9786e3e3661c7b9d0955a0ab5",
         intel: "d72ce5bb54b205e9ad5eda35a7c237c1be2c1c44a22b88956a606276b78c499a"

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
