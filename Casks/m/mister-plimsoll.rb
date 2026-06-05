cask "mister-plimsoll" do
  version "1.1.6"
  sha256 "8f4da44588f376509ec168ac081bb2f6633a7207502bf7f4f5099f0c0465f059"

  url "https://www.misterplimsoll.app/downloads/MisterPlimsoll-#{version}.dmg"
  name "Mister Plimsoll"
  desc "Storage volume usage monitoring and fullness notifications"
  homepage "https://www.misterplimsoll.app/"

  livecheck do
    url "https://misterplimsoll.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mister Plimsoll.app"

  zap trash: [
    "~/Library/Caches/com.glennf.MisterPlimsoll",
    "~/Library/HTTPStorages/com.glennf.MisterPlimsoll",
    "~/Library/Preferences/com.glennf.MisterPlimsoll.plist",
    "~/Library/WebKit/com.glennf.MisterPlimsoll",
  ]
end
