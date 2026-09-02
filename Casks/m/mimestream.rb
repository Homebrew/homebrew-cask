cask "mimestream" do
  version "1.10.6"
  sha256 "b6e87cb9eabc56eb5ce8a843afe5466601a6c789fe3630d4eb372150c1ee1cf5"

  url "https://download.mimestream.com/Mimestream_#{version}.dmg"
  name "Mimestream"
  desc "Native app email client for Gmail"
  homepage "https://mimestream.com/"

  livecheck do
    url "https://mimestream.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mimestream.app"

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream*",
    "~/Library/Application Scripts/group.com.mimestream.Mimestream",
    "~/Library/Caches/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream*",
    "~/Library/Group Containers/group.com.mimestream.Mimestream",
    "~/Library/Preferences/com.mimestream.Mimestream.plist",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
