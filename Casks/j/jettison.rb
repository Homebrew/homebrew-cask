cask "jettison" do
  version "1.8.6"
  sha256 "167458571ab773e8b10fe8ab97b43adad35b16450d6344f8ebdc6c0919551a9c"

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

  livecheck do
    url "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Caches/com.stclairsoft.Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
  ]
end
