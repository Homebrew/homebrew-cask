cask "default-folder-x" do
  version "5.5.2"
  sha256 "8b4dc81dffe43e8e586f87c94c965612797070b58dbfd1c53bd6e70beddde53b"

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
