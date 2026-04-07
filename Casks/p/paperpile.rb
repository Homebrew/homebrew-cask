cask "paperpile" do
  version "0.10.1"
  sha256 "97efa23fca20d1bb650bf3c4d94db0b6b105d1d2182dab086162cf927349283f"

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
