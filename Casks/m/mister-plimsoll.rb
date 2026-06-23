cask "mister-plimsoll" do
  version "1.1.7"
  sha256 "e28a7a95d18d4fc0a1c5ad3436c2e8d0e381a145286829aeb38957e3b57f1cdd"

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
