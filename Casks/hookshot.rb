cask "hookshot" do
  version "1.13"
  sha256 "32cc4fcc40259b54464cffc21451b2f0a472f24aa857f696ec4fb944d33feba1"

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
