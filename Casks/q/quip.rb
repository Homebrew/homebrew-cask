cask "quip" do
  version "9.17.6"
  sha256 "fcff67a5857716cf2140765c5f3670a0cd7c1b086ba9e3f8e55ac8eb497600b9"

  url "https://quip-clients.com/macosx_#{version}.dmg",
      verified: "quip-clients.com/"
  name "Quip"
  desc "Tool for teams to create living documents"
  homepage "https://quip.com/"

  livecheck do
    url "https://api.quip.com/-/sparkle-feed?manual=0"
    strategy :sparkle
  end

  auto_updates true

  app "Quip.app"

  zap trash: [
    "~/Library/Application Scripts/com.quip.Desktop.Quick-Look-Preview",
    "~/Library/Application Support/com.quip.Desktop",
    "~/Library/Caches/com.quip.Desktop",
    "~/Library/Containers/com.quip.Desktop.Quick-Look-Preview",
    "~/Library/Preferences/com.quip.Desktop.plist",
    "~/Library/WebKit/com.quip.Desktop",
  ]
end
