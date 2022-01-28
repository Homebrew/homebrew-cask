cask "sixtyforce" do
  version "2.0.2,87"
  sha256 :no_check

  url "https://sixtyforce.com/download/sixtyforce.zip"
  name "sixtyforce"
  desc "N64 emulator"
  homepage "https://sixtyforce.com/"

  app "sixtyforce.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gerrit.sixtyforce.sfl2",
    "~/Library/Application Support/sixtyforce",
    "~/Library/Caches/com.Gerrit.sixtyforce",
    "~/Library/Preferences/com.Gerrit.sixtyforce.plist",
  ]
end
