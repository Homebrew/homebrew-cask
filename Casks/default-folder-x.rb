cask "default-folder-x" do
  version "5.5.1"
  sha256 "76a7df27a140f9d136059978d028fda0a81e69ae7f99c6a7efeb2ac0d232e1ba"

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
