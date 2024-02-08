cask "mousepose" do
  version "4.3,10282"
  sha256 "75151165bfeb6eb1fe6ac3835cb0c80ce0bba26559d3c5410977bf034f688883"

  url "https://cdn.boinx.com/software/mousepose/Mousepose-#{version.csv.first}-Boinx-(#{version.csv.second}).app.zip"
  name "Mouseposé"
  desc "Highlight your mouse pointer and cursor position"
  homepage "https://boinx.com/mousepose/overview/"

  livecheck do
    url "https://sparkle.boinx.com/appcast.lasso?appName=mousepose"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/15708
  app "Mousepose.app", target: "Mousepose\314\201.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.boinx.mousepose.sfl*",
    "~/Library/Application Support/com.boinx.Mousepose",
    "~/Library/Caches/com.boinx.Mousepose/",
    "~/Library/Cookies/com.boinx.Mousepose.binarycookies",
    "~/Library/Preferences/com.boinx.Mousepose.plist",
  ]
end
