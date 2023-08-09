cask "namechanger" do
  version "3.4.4"
  sha256 "47c52b763eb4b2084cda5d616b6e30be57e2d1e75ec175d7091bff90066fa880"

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  name "NameChanger"
  desc "Rename a list of files quickly"
  homepage "https://mrrsoftware.com/namechanger/"

  livecheck do
    url "https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "NameChanger.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mrrsoftware.namechanger.sfl*",
    "~/Library/Application Support/NameChanger",
    "~/Library/Preferences/com.mrrsoftware.NameChanger.plist",
  ]
end
