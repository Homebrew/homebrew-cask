cask "cotypist" do
  version "2026.5.3"
  sha256 "5f64dc09e594c91e68da762f19765a1e6f6206e142762ef41b1dea94e00f01cb"

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
