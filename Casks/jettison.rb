cask "jettison" do
  version "1.8.2,3340"
  sha256 "ff3e6bde991a52b5f33b38ea24f543dc421c2e055c4f1c89aa37fa2f823bea97"

  url "https://stclairsoft.com/download/Jettison-#{version.before_comma}.dmg"
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
