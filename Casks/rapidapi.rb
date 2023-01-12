cask "rapidapi" do
  version "4.1.1,4001001002"
  sha256 "3cf4cf76a1fc5f3951e1ee232a420e5ab86389b8d01d5346e8d1e2ec53affe08"

  url "https://cdn-builds.paw.cloud/paw/RapidAPI-#{version.csv.first}.zip"
  name "RapidAPI"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  livecheck do
    url "https://paw.cloud/api/v2/updates/appcast"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "RapidAPI.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]
end
