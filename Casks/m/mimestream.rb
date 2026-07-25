cask "mimestream" do
  version "1.10.5"
  sha256 "80e482a0709c78180260e2d542703329894a38f2ed33c81e3c2b5b6d7886a882"

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
