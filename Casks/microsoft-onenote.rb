cask "microsoft-onenote" do
  version "16.70.23021201"
  sha256 "267b67367dc54b08d52808c486c4eb1c8800181237e2cb9c16085698bbab8331"

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_OneNote_#{version}_Updater.pkg",
      verified: "officecdnmac.microsoft.com/"
  name "Microsoft OneNote"
  desc "Digital note taking app"
  homepage "https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app"

  livecheck do
    cask "microsoft-office"
  end

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on macos: ">= :catalina"

  uninstall pkgutil:   "com.microsoft.package.Microsoft_OneNote.app",
            delete:    "/Applications/Microsoft OneNote.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.onenote.mac",
    "~/Library/Application Scripts/com.microsoft.onenote.mac.shareextension",
    "~/Library/Containers/com.microsoft.onenote.mac",
    "~/Library/Containers/com.microsoft.onenote.mac.shareextension",
  ]
end
