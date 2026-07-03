cask "mister-plimsoll" do
  version "1.1.8"
  sha256 "141db768ceaf0a449e15110907ac50847aca050577148611af42871ad40c7b03"

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
