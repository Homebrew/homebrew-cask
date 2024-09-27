cask "clay" do
  version "2.17.15"
  sha256 "d99a5cb116fd87b1810a104e34c93a623dffb946551f8758896eb9275f5010e8"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}-universal.dmg"
  name "Clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
