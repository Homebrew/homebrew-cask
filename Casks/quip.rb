cask "quip" do
  version "7.63.1"
  sha256 "5154e1bbc6f978c0a377c70c4a2866b02a406c1e8183e1618a97ed8386de3a4f"

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
