cask "sqleditor" do
  version "4.0.3"
  sha256 "c737c67ad57a2c9be0168a5c7466a35e71669ed0ec908cd09cb678bc41db3fea"

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  name "SQLEditor"
  desc "SQL database design tool"
  homepage "https://www.malcolmhardie.com/sqleditor/"

  livecheck do
    url "https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "SQLEditor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.malcolmhardie.sqleditor.cocoa.sfl*",
    "~/Library/Application Support/SQLEditor",
    "~/Library/HTTPStorages/com.malcolmhardie.sqleditor.cocoa",
    "~/Library/Logs/SQLEditor.log",
    "~/Library/Preferences/com.malcolmhardie.sqleditor.cocoa.plist",
    "~/Library/Saved Application State/com.malcolmhardie.sqleditor.cocoa.savedState",
  ]
end
