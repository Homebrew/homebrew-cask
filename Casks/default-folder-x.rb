cask "default-folder-x" do
  version "5.7.3,5616"
  sha256 "a342cd435ed3b682b70a2edfd67f70d9d52a53a530b979af15d4b85d1d6b31f3"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version.csv.first}.dmg"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX#{version.major}"
    strategy :sparkle
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
