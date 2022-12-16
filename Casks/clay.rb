cask "clay" do
  version "2.1.13"
  sha256 "4638f12530a5f92f613f20aa7a35d63548c30603c59ed63a5532231ab6b7998a"

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}-universal.dmg"
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
