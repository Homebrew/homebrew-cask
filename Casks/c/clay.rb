cask "clay" do
  version "2.17.7"
  sha256 "c1104746ea5215aa290980d3f55bdb17578eba76623f09f5bd63e894a2aca434"

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
