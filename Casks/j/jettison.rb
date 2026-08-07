cask "jettison" do
  version "1.9.7"
  sha256 "535135f665d141740d19b29c4c2c5f4f23ab89a6e4a454fd4f30859329416f19"

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
  depends_on :macos

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Caches/com.stclairsoft.Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
  ]
end
