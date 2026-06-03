cask "mousepose" do
  version "4.5,10306"
  sha256 "9504dd0b5f3767a608c829425b9bd3248a7e1a05db55258704dee9cf234190f8"

  url "https://cdn.boinx.com/software/mousepose/Boinx_Mousepose_#{version.csv.first}-#{version.csv.second}.app.zip"
  name "Mouseposé"
  desc "Highlight your mouse pointer and cursor position"
  homepage "https://boinx.com/mousepose/overview/"

  livecheck do
    url "https://sparkle.boinx.com/appcast.lasso?appName=mousepose"
    strategy :sparkle
  end

  depends_on :macos

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/15708
  app "Mousepose.app", target: "Mousepose\314\201.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.boinx.mousepose.sfl*",
    "~/Library/Application Support/com.boinx.Mousepose",
    "~/Library/Caches/com.boinx.Mousepose",
    "~/Library/Cookies/com.boinx.Mousepose.binarycookies",
    "~/Library/Preferences/com.boinx.Mousepose.plist",
  ]
end
