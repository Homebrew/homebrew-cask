cask "hookshot" do
  version "1.21,41"
  sha256 "f564aaf9986091ef2ca95959f369fc1686e5e0a8ee809910b57c11fb08b5535b"

  url "https://hookshot.app/downloads/Hookshot#{version.before_comma}.dmg"
  name "Hookshot"
  homepage "https://hookshot.app/"

  livecheck do
    url "https://hookshot.app/downloads/updates.xml"
    strategy :sparkle
  end

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
