cask "rapidapi" do
  version "4.5.4"
  sha256 "cc8953efdde6eb142c294001d4dec30b49d1389513a7cecd7ad87eaf7c1f7991"

  url "https://cdn-builds.paw.cloud/paw/RapidAPI-#{version}.zip"
  name "RapidAPI"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  livecheck do
    url "https://paw.cloud/api/v2/updates/appcast"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "RapidAPI.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]
end
