cask "hookshot" do
  version "1.17.1,34"
  sha256 "de6ffa9563ee5b664ff01c1bd131d90466a6cc18d83529eab36810f3cca930d1"

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
