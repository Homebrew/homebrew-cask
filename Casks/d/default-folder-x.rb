cask "default-folder-x" do
  version "6.3.2"
  sha256 "5a3421dcb7032b56d7ff8200487c4fba18b85ee213411d42b0519470d002bfc1"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX#{version.major}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Default Folder X.app"

  uninstall quit: "com.stclairsoft.DefaultFolderX*"

  zap trash: [
    "~/Library/Application Scripts/com.stclairsoft.DefaultFolderX#{version.major}.DrawerButtonExtension",
    "~/Library/Application Scripts/com.stclairsoft.DefaultFolderX#{version.major}.MenuButtonExtension",
    "~/Library/Application Support/.com.stclairsoft",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx#{version.major}.sfl*",
    "~/Library/Application Support/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Application Support/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Caches/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Caches/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Containers/com.stclairsoft.DefaultFolderX#{version.major}.DrawerButtonExtension",
    "~/Library/Containers/com.stclairsoft.DefaultFolderX#{version.major}.MenuButtonExtension",
    "~/Library/Preferences/com.stclairsoft.DefaultFolderX#{version.major}.plist",
    "~/Library/Preferences/com.stclairsoft.DefaultFolderX#{version.major}.plist",
  ]
end
