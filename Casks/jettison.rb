cask "jettison" do
  version "1.8"
  sha256 "d181859e8e54286e4a3747d6d22f47a390fb3e2aeba7449bc62a7fa83b8bc7df"

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

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
