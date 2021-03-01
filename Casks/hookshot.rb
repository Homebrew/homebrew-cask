cask "hookshot" do
  version "1.18,35"
  sha256 "601656f20da76bc411b36b32b5aa57914f5e199e9e509ac85d7a6b3be5d898da"

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
