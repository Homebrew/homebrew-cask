cask "expandrive" do
  version "2026.07.29.878"
  sha256 :no_check

  url "https://www.expandrive.com/api/download/expandrive?platform=macos"
  name "ExpanDrive"
  desc "Network drive and browser for cloud storage"
  homepage "https://www.expandrive.com/apps/expandrive/"

  livecheck do
    url "https://www.expandrive.com/api/download/expandrive?platform=macos"
    regex(%r{/ExpanDrive/v?(\d+(?:\.\d+)+)/}i)
    strategy :header_match
  end

  depends_on macos: :big_sur

  app "ExpanDrive.app"

  zap trash: [
    "~/Library/Application Scripts/CH86M498V4.com.expandrive",
    "~/Library/Application Scripts/com.expandrive.ExpanDrive.FileProvider",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.expandrive.expandrive.sfl*",
    "~/Library/Application Support/ExpanDrive",
    "~/Library/Containers/com.expandrive.ExpanDrive.FileProvider",
    "~/Library/Group Containers/CH86M498V4.com.expandrive",
    "~/Library/HTTPStorages/com.expandrive.ExpanDrive",
    "~/Library/Logs/ExpanDrive",
    "~/Library/Preferences/com.expandrive.exfs.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive*.plist",
    "~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist",
  ]
end
