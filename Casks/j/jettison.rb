cask "jettison" do
  version "1.9.2"
  sha256 "45b6a90a902cfd5a0ade56a3ef2a13df47bf5d53b9b9a0e47d8895e570c3baf6"

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  name "Jettison"
  name "St. Clair Software Jettison"
  desc "Automatically ejects external drives"
  homepage "https://stclairsoft.com/Jettison/"

  livecheck do
    url "https://stclairsoft.com/cgi-bin/sparkle.cgi?JT"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Jettison.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*",
    "~/Library/Application Support/Jettison",
    "~/Library/Caches/com.stclairsoft.Jettison",
    "~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist",
    "~/Library/Preferences/com.stclairsoft.Jettison.plist",
  ]
end
