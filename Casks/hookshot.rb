cask "hookshot" do
  version "1.11"
  sha256 "5f1b4a6db8e87ab82194adb04d7360f78ab431cef19cdff365b6dfdbb9e52c85"

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
