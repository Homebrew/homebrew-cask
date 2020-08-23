cask "backblaze" do
  version :latest
  sha256 :no_check

  url "https://secure.backblaze.com/mac/install_backblaze.dmg"
  name "Backblaze"
  homepage "https://backblaze.com/"

  installer manual: "Backblaze Installer.app"

  uninstall script: "#{staged_path}/Backblaze Uninstaller.app/Contents/MacOS/Backblaze Uninstaller"

  zap trash: [
    "/Library/Backblaze.bzpkg",
    "~/Library/Preferences/com.backblaze.bzbmenu.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.backblaze.*.sfl*",
    "/Library/Logs/DiagnosticReports/bzbmenu_*.*_resource.diag",
    "~/Library/Logs/BackblazeGUIInstaller",
  ]
end
