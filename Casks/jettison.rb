cask "jettison" do
  version "1.8.1"
  sha256 "40aef2e9cc2b5fd5615c56c2b355705e185945c580e0c940eaa48493165c62fe"

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
