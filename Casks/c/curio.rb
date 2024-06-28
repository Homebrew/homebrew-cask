cask "curio" do
  version "29.0,29004"
  sha256 "03b9b381fb272f10e8b5e0316a499dbed45450eebfcea5bb6deb66589498a4fb"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.dmg"
  name "Curio"
  desc "Note-taking and organisation tool"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Curio.app"

  zap trash: [
    "~/Library/Application Scripts/com.zengobi.curio.Curio-Quick-Look-*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zengobi.curio.sfl*",
    "~/Library/Application Support/Curio",
    "~/Library/Caches/com.zengobi.curio",
    "~/Library/Containers/com.zengobi.curio.Curio-Quick-Look-*",
    "~/Library/HTTPStorages/com.zengobi.curio",
    "~/Library/Preferences/com.zengobi.curio.plist",
    "~/Library/Saved Application State/com.zengobi.curio.savedState",
    "~/Library/WebKit/com.zengobi.curio",
  ]
end
