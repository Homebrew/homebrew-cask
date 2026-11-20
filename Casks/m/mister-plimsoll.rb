cask "mister-plimsoll" do
  version "1.1.10"
  sha256 "c0fb09fc0eaacebcff8815f030a97e2275cbf134079e85e568cc0022dba61035"

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
