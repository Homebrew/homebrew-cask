cask "default-folder-x" do
  version "5.4.6"
  sha256 "617da236112e84f7eeb00285001e277c5a9c60bb3f4bde9230516d32750ca7b4"

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
