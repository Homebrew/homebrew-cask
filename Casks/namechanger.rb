cask "namechanger" do
  version "3.4.3,12"
  sha256 "27ca369e1c355b2f7683caf709db7c180a8dfeeed3bbd72db55db54889a70ac4"

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.csv.first.dots_to_underscores}.zip"
  name "NameChanger"
  desc "Rename a list of files quickly"
  homepage "https://mrrsoftware.com/namechanger/"

  livecheck do
    url "https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml"
    strategy :sparkle
  end

  auto_updates true

  app "NameChanger.app"

  zap trash: [
    "~/Library/Application Support/NameChanger",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mrrsoftware.namechanger.sfl*",
    "~/Library/Preferences/com.mrrsoftware.NameChanger.plist",
  ]
end
