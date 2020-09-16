cask "namechanger" do
  version "3.4.3"
  sha256 "27ca369e1c355b2f7683caf709db7c180a8dfeeed3bbd72db55db54889a70ac4"

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast "https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml"
  name "NameChanger"
  desc "Rename a list of files quickly"
  homepage "https://mrrsoftware.com/namechanger/"

  auto_updates true

  app "NameChanger.app"

  zap trash: [
    "~/Library/Application Support/NameChanger",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mrrsoftware.namechanger.sfl*",
    "~/Library/Preferences/com.mrrsoftware.NameChanger.plist",
  ]
end
