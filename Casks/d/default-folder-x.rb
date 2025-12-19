cask "default-folder-x" do
  version "6.2.4"
  sha256 "9f20d518f825be38dd413707d05f52375fa380780db6e32092cc338480f3346f"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX#{version.major}"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Default Folder X.app"

  zap trash: [
    "~/Library/Application Support/.com.stclairsoft",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx#{version.major}.sfl*",
    "~/Library/Application Support/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Caches/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Preferences/com.stclairsoft.DefaultFolderX#{version.major}.plist",
  ]
end
