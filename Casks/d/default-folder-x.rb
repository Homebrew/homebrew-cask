cask "default-folder-x" do
  version "6.0.4"
  sha256 "bbae6554ebeb2fb3e50e60366ddda2901543a786e16607f5ffa3d65394a28857"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version}.dmg"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX#{version.major}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Default Folder X.app"

  zap trash: [
    "~/Library/Application Support/.com.stclairsoft",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.defaultfolderx#{version.major}.sfl*",
    "~/Library/Application Support/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Caches/com.stclairsoft.DefaultFolderX#{version.major}",
    "~/Library/Preferences/com.stclairsoft.DefaultFolderX#{version.major}.plist",
  ]
end
