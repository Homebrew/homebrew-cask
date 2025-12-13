cask "smartsheet" do
  version "1.0.53"
  sha256 :no_check

  url "https://builds.desktopapp.smartsheet.com/public/darwin/Smartsheet-setup.dmg"
  name "Smartsheet"
  desc "Spreadsheet-style project management solution"
  homepage "https://www.smartsheet.com/"

  livecheck do
    url "https://builds.desktopapp.smartsheet.com/public/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Smartsheet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.smartsheet.desktopapp.sfl*",
    "~/Library/Application Support/Smartsheet",
    "~/Library/Preferences/com.smartsheet.desktopapp.plist",
  ]
end
