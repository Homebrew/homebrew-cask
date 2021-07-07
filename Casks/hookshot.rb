cask "hookshot" do
  version "1.22.4,50"
  sha256 "72553487d06d26daaffc81278fb6944b7f516b3a27a38c6fcfd90752ac4efa6a"

  url "https://hookshot.app/downloads/Hookshot#{version.before_comma}.dmg"
  name "Hookshot"
  desc "Window snapping tool"
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
