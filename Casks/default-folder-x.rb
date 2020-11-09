cask "default-folder-x" do
  version "5.5"
  sha256 "1649beb6f419e8978055fdf07a3ca15abced1b02723f9ddafd32b22acda7d88a"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  appcast "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX5"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  auto_updates true

  app "Default Folder X.app"

  zap trash: [
    "~/Library/Application Support/.com.stclairsoft",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx5.sfl*",
    "~/Library/Application Support/com.stclairsoft.DefaultFolderX5",
    "~/Library/Caches/com.stclairsoft.DefaultFolderX5",
    "~/Library/Preferences/com.stclairsoft.DefaultFolderX5.plist",
  ]
end
