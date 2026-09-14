cask "cotypist" do
  version "2026.4"
  sha256 "245a9ded69d04b6c2f56d956b6a8cb9310fa7de490ecd32e5f9576ee6b640b6a"

  url "https://cotypist.app/download/Cotypist-#{version}.dmg"
  name "Cotypist"
  desc "System-wide AI autocomplete"
  homepage "https://cotypist.app/"

  livecheck do
    url "https://cotypist.app/updates/cotypist.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cotypist.app"

  zap trash: [
    "~/Library/Application Support/app.cotypist.Cotypist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cotypist.cotypist.sfl*",
    "~/Library/Caches/app.cotypist.Cotypist",
    "~/Library/HTTPStorages/app.cotypist.Cotypist",
    "~/Library/Preferences/app.cotypist.Cotypist.plist",
  ]
end
