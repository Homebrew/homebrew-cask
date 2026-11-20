cask "pinwheel" do
  version "1.12.1,119"
  sha256 "291dd0129860c6e1e94cbece15eeeb50798a9ecc8fd7f505625c5bfb8750680f"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bjango.pinwheel.sfl*",
    "~/Library/Caches/com.bjango.pinwheel",
    "~/Library/Caches/Pinwheel",
    "~/Library/Containers/com.bjango.pinwheel.PinwheelPreviewer",
    "~/Library/HTTPStorages/com.bjango.pinwheel",
    "~/Library/Preferences/com.bjango.pinwheel.plist",
    "~/Library/Saved Application State/com.bjango.pinwheel.savedState",
  ]
end
