cask "avbeam" do
  version "1.2.0"
  sha256 :no_check

  url "https://speechpulse.com/download/avbeam.dmg"
  name "AVbeam"
  desc "Audio file similarity viewer"
  homepage "https://speechpulse.com/avbeam-software-store/avbeam/"

  livecheck do
    url :homepage
    regex(/AVbeam\s+version\s+(\d+(?:\.\d+)+)\s+release/i)
  end

  depends_on macos: ">= :high_sierra"

  app "avbeam.app"

  zap trash: [
    "~/Library/Application Support/avbeam",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/avbeam.sfl*",
    "~/Library/Preferences/avbeam.plist",
    "~/Library/Saved Application State/avbeam.savedState",
  ]
end
