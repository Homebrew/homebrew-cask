cask "mimestream" do
  version "0.37.0"
  sha256 "c66adeca1301283b6102374fa3e9bcf31cc8d5609b4cbbcefaa9a3492ff107f3"

  url "https://download.mimestream.com/Mimestream_#{version}.dmg"
  name "Mimestream"
  desc "Native app email client for Gmail"
  homepage "https://mimestream.com/"

  livecheck do
    url "https://mimestream.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Mimestream.app"

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream",
    "~/Library/Application Scripts/com.mimestream.Mimestream.ShareExtension",
    "~/Library/Caches/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream.ShareExtension",
    "~/Library/Preferences/com.mimestream.Mimestream.plist",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
