cask "paw" do
  version "3.3.2,3003002002"
  sha256 "a4bccd7646be6d310c44e3f74dbe8f3ace63dd00b02bd7fe8dbf5bc6286f3f7b"

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.before_comma}.zip"
  name "Paw"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  livecheck do
    url "https://paw.cloud/api/v2/updates/appcast"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Paw.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]
end
