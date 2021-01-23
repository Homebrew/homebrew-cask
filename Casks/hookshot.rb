cask "hookshot" do
  version "1.17,33"
  sha256 "fa0745abe94e433e0695c29462b40cfc18faf553e9f677b688eed565d55ce3a7"

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
