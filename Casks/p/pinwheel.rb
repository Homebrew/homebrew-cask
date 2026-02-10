cask "pinwheel" do
  version "1.8.5,106"
  sha256 "4d5303fc8b29d8faef5a478a6b436bbfdcc82c9a49e0f87aac0cc87d7e5028a8"

  url "https://cdn2.bjango.com/pinwheel/versions/Pinwheel_#{version.csv.first.dots_to_underscores}-#{version.csv.second}.zip"
  name "Pinwheel"
  desc "Design systems and accessibility testing"
  homepage "https://bjango.com/mac/pinwheel/"

  livecheck do
    url "https://updates.skala.app/pinwheel/pinwheel.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Pinwheel.app"

  zap trash: [
    "~/Library/Application Scripts/com.bjango.pinwheel.PinwheelPreviewer",
    "~/Library/Caches/Pinwheel",
    "~/Library/Containers/com.bjango.pinwheel.PinwheelPreviewer",
    "~/Library/HTTPStorages/com.bjango.pinwheel",
    "~/Library/Preferences/com.bjango.pinwheel.plist",
    "~/Library/Saved Application State/com.bjango.pinwheel.savedState",
  ]
end
