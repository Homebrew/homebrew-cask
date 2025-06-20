cask "sherlock-app" do
  version "2.12.0"
  sha256 "97ca67d876eb3524c1bfdb74248a686097957f598c233d1458d19588a732348d"

  url "https://sherlock-macos-releases.s3.amazonaws.com/Sherlock+#{version}.dmg",
      verified: "sherlock-macos-releases.s3.amazonaws.com/"
  name "Sherlock"
  desc "iOS simulator visual debugger"
  homepage "https://sherlock.inspiredcode.io/"

  livecheck do
    url "https://sherlock-website-assets.s3.amazonaws.com/versions.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Sherlock.app"

  zap trash: [
    "/Users/Shared/Sherlock",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.inspiredcode.sherlock.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.inspiredcode.sherlocklauncher.sfl*",
    "~/Library/Application Support/io.inspiredcode.Sherlock",
    "~/Library/Application Support/Sherlock",
    "~/Library/Caches/io.inspiredcode.Sherlock",
    "~/Library/Caches/io.inspiredcode.Sherlock",
    "~/Library/Preferences/io.inspiredcode.Sherlock.plist",
  ]
end
