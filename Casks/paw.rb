cask "paw" do
  version "3.2.2,3002002001"
  sha256 "2cae45407bf251840f10920cb76acb6127a0d4eebe642f7087aae47b0d56d9ec"

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
