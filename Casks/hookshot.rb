cask "hookshot" do
  version "1.23.1,54"
  sha256 "e57af39f3398edb18df37a849d820f39718d97e7a2ab247753b3fef1c73bb5e6"

  url "https://hookshot.app/downloads/Hookshot#{version.csv.first}.dmg"
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
