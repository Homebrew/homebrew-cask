cask "clay" do
  version "2.18.0"
  sha256 "5dd434375f3e100311faa7df6aaf2571865ae2dc1b9f7b322a16c705258d53d5"

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
