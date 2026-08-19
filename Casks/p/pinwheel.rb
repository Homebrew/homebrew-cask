cask "pinwheel" do
  version "1.11.1,112"
  sha256 "7bb69e9a5fcc19b7cba770d35136899fe9c14e4f5e99ccb122ab04e5c190c841"

  url "https://cdn2.bjango.com/pinwheel/versions/Pinwheel_#{version.csv.first.dots_to_underscores}-#{version.csv.second}.zip"
  name "Pinwheel"
  desc "Design systems and accessibility testing"
  homepage "https://bjango.com/mac/pinwheel/"

  livecheck do
    url "https://updates.skala.app/pinwheel/pinwheel.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

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
