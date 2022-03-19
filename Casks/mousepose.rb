cask "mousepose" do
  version "4.2,10276"
  sha256 "a8e1d256f5931e78d730cb9d8de0f50758529373a6bfada9743e069e3ec70ef7"

  url "https://cdn.boinx.com/software/mousepose/Mousepose-#{version.csv.first}-Boinx-(#{version.csv.second}).app.zip"
  name "Mouseposé"
  desc "Highlight your mouse pointer and cursor position"
  homepage "https://boinx.com/mousepose/overview/"

  livecheck do
    url "https://sparkle.boinx.com/appcast.lasso?appName=mousepose"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/15708
  app "Mousepose.app", target: "Mousepose\314\201.app"

  zap trash: [
    "~/Library/Application Support/com.boinx.Mousepose",
    "~/Library/Caches/com.boinx.Mousepose/",
    "~/Library/Cookies/com.boinx.Mousepose.binarycookies",
    "~/Library/Preferences/com.boinx.Mousepose.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.boinx.mousepose.sfl*",
  ]
end
