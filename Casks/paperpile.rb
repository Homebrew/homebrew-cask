cask "paperpile" do
  version "0.7.2"
  sha256 "d512ad93042c580cdf6343f466dd3d83c1108b2badec400d0d9ad0dc49a14807"

  url "https://cdn.paperpile.com/download/desktop/Paperpile-#{version}.dmg"
  name "Paperpile"
  desc "Citation plugin for Microsoft Word"
  homepage "https://paperpile.com/word-plugin/"

  livecheck do
    url "https://paperpile-desktop.s3.amazonaws.com/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Paperpile.app"

  zap trash: [
    "~/Library/Application Support/Paperpile",
    "~/Library/Group Containers/*.Office/User Content.localized/Startup.localized/Word/paperpile*",
    "~/Library/Preferences/com.paperpile.paperpile.plist",
  ]
end
