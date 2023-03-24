cask "quip" do
  version "7.74.0"
  sha256 "e4b837819494ed2295fe01f9fce71d9bd56cfc2a5805bb195ad035ab97912927"

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
  depends_on macos: ">= :mojave"

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
