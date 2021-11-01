cask "jiohome" do
  version "2.0.7"
  sha256 "1aac43d4c5c196eb60f79afd9a6e9db3b7edc16678c3dbc8debfef14a79254f5"

  url "https://static.jiocloud.com/artifacts/JioHome#{version}.dmg",
      verified: "static.jiocloud.com/artifacts/"
  name "JioHome"
  desc "View and share local media content"
  homepage "https://www.jio.com/en-in/apps/jiohome-desktop"

  livecheck do
    url "https://www.jio.com/en-in/apps/jiohome-desktop#download"
    regex(/href=.*?JioHome[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "JioHome#{version}.pkg"

  uninstall quit:    "com.jio.jiomediashare",
            pkgutil: "com.jio.jiomediashare"

  zap trash: [
    "~/Library/.JioHomeFiles",
    "~/Library/Caches/com.jio.jiomediashare",
    "~/Library/Preferences/com.jio.jiomediashare.plist",
  ]
end
