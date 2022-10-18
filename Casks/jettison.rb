cask "jettison" do
  version "1.8.5,3603"
  sha256 "cf0a44348f68921364b67b10969b82db853c607c2c10d45b62ea76b5d3fd43b2"

  url "https://stclairsoft.com/download/Jettison-#{version.csv.first}.dmg"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

  livecheck do
    url "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
    strategy :sparkle
  end

  auto_updates true

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Caches/com.stclairsoft.Jettison",
  ]
end
