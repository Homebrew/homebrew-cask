cask "pinwheel" do
  version "1.5.2"
  sha256 "cea18812005763a76e0e2a16e088ab09f6019aa5577ecb9278729a02de2ca6d3"

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
