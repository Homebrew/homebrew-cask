cask "chime" do
  version "2.2.5,157"
  sha256 "0a52a3cf970e38f07dd45c2854e1096926e4960219b438f3601b5af55a747453"

  url "https://updates.chimehq.com/com.chimehq.Edit/#{version.csv.second}/Chime.app.zip"
  name "Chime"
  desc "Text and code editor"
  homepage "https://www.chimehq.com/"

  livecheck do
    url "https://updates.chimehq.com/com.chimehq.Edit/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Chime.app"
  binary "#{appdir}/Chime.app/Contents/MacOS/chimecli", target: "chime"

  zap trash: [
    "~/Library/Application Scripts/com.chimehq.Edit.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.chimehq.edit*",
    "~/Library/Application Support/com.chimehq.Edit",
    "~/Library/Caches/com.apple.helpd/Generated/com.chimehq.Edit.Help*",
    "~/Library/Caches/com.chimehq.Edit",
    "~/Library/Containers/com.chimehq.Edit.*",
    "~/Library/HTTPStorages/com.chimehq.Edit",
    "~/Library/Preferences/com.chimehq.Edit.plist",
    "~/Library/Saved Application State/com.chimehq.Edit.savedState",
    "~/Library/WebKit/com.chimehq.Edit",
  ]
end
