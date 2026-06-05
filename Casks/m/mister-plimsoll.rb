cask "mister-plimsoll" do
  version "1.1.5"
  sha256 "03ed8ef2ff71cc853fd9801333ab6d7591afd0362750475e1e27a18ec79cb047"

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
