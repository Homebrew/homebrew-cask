cask "paperpile" do
  version "0.9.0"
  sha256 "1e8954327698f7f419cceff91343e8f5193d9a9007b3872370a883d45e8d3b8a"

  url "https://cdn.paperpile.com/download/desktop/Paperpile-#{version}.dmg"
  name "Paperpile"
  desc "Citation plugin for Microsoft Word"
  homepage "https://paperpile.com/word-plugin/"

  livecheck do
    url "https://paperpile-desktop.s3.amazonaws.com/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Paperpile.app"

  zap trash: [
    "~/Library/Application Support/Paperpile",
    "~/Library/Group Containers/*.Office/User Content.localized/Startup.localized/Word/paperpile*",
    "~/Library/Preferences/com.paperpile.paperpile.plist",
  ]

  caveats do
    requires_rosetta
  end
end
