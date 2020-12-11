cask "hookshot" do
  version "1.15"
  sha256 "a9ddf6973d52380f2f4c7f0df01708280c577c3c95cf762bef54ea1b18e548b7"

  url "https://hookshot.app/downloads/Hookshot#{version}.dmg"
  appcast "https://hookshot.app/downloads/updates.xml"
  name "Hookshot"
  homepage "https://hookshot.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Hookshot.app"

  zap trash: [
    "~/Library/Application Support/Hookshot",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
