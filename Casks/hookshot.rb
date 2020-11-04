cask "hookshot" do
  version "1.9.1"
  sha256 "0229ae1ba28e7aa0459c358fe51f9352c86a18b83e4faa6d955358dd22e53363"

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
