cask "mimestream" do
  version "0.36.2"
  sha256 "c5f93183d28e89decb82fed2f5accd674dcb578cc9cee973b8658dcdc4071f8d"

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
