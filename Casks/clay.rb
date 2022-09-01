cask "clay" do
  arch arm: "-arm64"

  version "1.10.1"
  sha256 arm:   "07778da9a7870a61a5c1e943bf378a86d4089293b6be3b1c9521bc12060a642a",
         intel: "95237d9336ddc339708120b46e00ada122536abe798038dc10af0d14bc81653e"

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
