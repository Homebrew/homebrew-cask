cask "ltx-desktop" do
  version "1.3.2"
  sha256 "eaebcd6e17c6915820b0c42365a6dcee1ab38b997799efd281f7f4c3c95911f2"

  url "https://github.com/Lightricks/LTX-Desktop/releases/download/v#{version}/LTX-Desktop-arm64.dmg"
  name "LTX Desktop"
  desc "Desktop app for generating videos with LTX models"
  homepage "https://ltx.io/ltx-desktop"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LTX Desktop.app"

  uninstall quit: "com.lightricks.ltx-desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lightricks.ltx-desktop.sfl*",
    "~/Library/Preferences/com.lightricks.ltx-desktop.plist",
    "~/Library/Saved Application State/com.lightricks.ltx-desktop.savedState",
  ]
end
