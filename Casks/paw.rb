cask "paw" do
  version "3.2.1"
  sha256 "f532516ba27c0d1c5a0568eab1314c75c086846636a2c046b261717c8f9bf367"

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version}.zip"
  appcast "https://paw.cloud/api/v2/updates/appcast"
  name "Paw"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

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
