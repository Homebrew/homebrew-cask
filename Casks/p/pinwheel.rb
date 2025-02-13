cask "pinwheel" do
  version "1.3.6"
  sha256 "82e1549a5a804b8003e39467253fb9f8a76a02c3fc83992bd9d2fdc60b976767"

  url "https://cdn.skala.app/pinwheel/versions/Pinwheel_#{version.dots_to_underscores}.zip",
      verified: "cdn.skala.app/"
  name "Pinwheel"
  desc "Design systems and accessibility testing"
  homepage "https://bjango.com/mac/pinwheel/"

  livecheck do
    url "https://updates.skala.app/pinwheel/pinwheel.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

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
