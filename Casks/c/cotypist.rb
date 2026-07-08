cask "cotypist" do
  version "2026.3.1"
  sha256 "52cafdd4c87ef3f73bb5afde824fa46b0799e3b45c046c959c457ffa1f1e2cb1"

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
