cask "paperpile" do
  version "0.8.0"
  sha256 "8fb080a2eeb9f6eb1074b5eba400a008e96c1c87929155f0d67136c7efe6d93f"

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
