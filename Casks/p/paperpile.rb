cask "paperpile" do
  version "0.10.0"
  sha256 "226a37dc17f12e6a8105403f01d2ea2d800c06247703821e42046cede6f4ff80"

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
