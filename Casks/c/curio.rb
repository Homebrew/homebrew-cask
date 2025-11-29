cask "curio" do
  version "32.0.4,32041"
  sha256 "8e87521d2b302d6a09e99d2c9d7cbb898cdfa228a307e8358a7e1a5f35208cae"

  url "https://www.zengobi.com/downloads/Curio#{version.csv.second.no_dots}.dmg"
  name "Curio"
  desc "Note-taking and organisation tool"
  homepage "https://zengobi.com/curio/"

  livecheck do
    url "https://www.zengobi.com/curio/appcasts/Curio#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
