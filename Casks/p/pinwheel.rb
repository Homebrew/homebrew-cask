cask "pinwheel" do
  version "1.11.2,113"
  sha256 "80979fb28eeab94a752881e3e2e35fe53e0ea6dc26223baa55d2f692b4e46f6f"

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
