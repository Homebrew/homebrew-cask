cask "cotypist" do
  version "2026.2"
  sha256 "0e5011681901936edce67bf68fa1dedd827c32c9ef7e3a9392ab33d77fbb7238"

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
