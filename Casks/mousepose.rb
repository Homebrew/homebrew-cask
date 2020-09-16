cask "mousepose" do
  version "4.1,10196"
  sha256 "f8a87300c434777ac6e3c2ad11d1b4197ac78fc8b7fe1fb6c7d13ce213c56336"

  url "https://cdn.boinx.com/software/mousepose/Boinx_Mousepose_#{version.before_comma}-#{version.after_comma}.app.zip"
  appcast "https://sparkle.boinx.com/appcast.lasso?appName=mousepose"
  name "Mouseposé"
  homepage "https://boinx.com/mousepose/overview/"

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
