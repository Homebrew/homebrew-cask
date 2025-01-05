cask "sourcenote" do
  version "1.3.2"
  sha256 "842bc3b739fbc361d19378b40a4115a4c4e4661bd95f61776063b6f9707c211e"

  url "https://www.sourcenoteapp.com/releases/SourceNote_#{version}.dmg"
  name "SourceNote"
  desc "Text snippet app"
  homepage "https://www.sourcenoteapp.com/"

  livecheck do
    url "https://www.sourcenoteapp.com/releases/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "SourceNote.app"

  zap trash: [
    "~/Library/Application Scripts/*.SourceNote",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.devinabbott.sourcenote*",
    "~/Library/Application Support/SourceNote",
    "~/Library/Caches/com.devinabbott.SourceNote",
    "~/Library/Group Containers/*.SourceNote",
    "~/Library/HTTPStorages/com.devinabbott.SourceNote*",
    "~/Library/Preferences/com.devinabbott.SourceNote.plist",
  ]
end
