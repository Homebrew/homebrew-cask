cask "default-folder-x" do
  version "5.5.8,4546"
  sha256 "32fea5062d693e9142ae2a493db77857fbd1b866c9709a57e852c3ab85cfe84c"

  url "https://www.stclairsoft.com/download/DefaultFolderX-#{version.before_comma}.dmg"
  name "Default Folder X"
  desc "Utility to enhance the Open and Save dialogs in applications"
  homepage "https://www.stclairsoft.com/DefaultFolderX/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?DX#{version.major}"
    strategy :sparkle
  end

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
