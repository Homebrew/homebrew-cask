cask "clay" do
  version "2.19.0"
  sha256 "7a9e08d3a4380e811ca97940a3baf7a53e271209648f7197bdfff3328bf1803b"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}-universal.dmg"
  name "Clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
