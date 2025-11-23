cask "microsoft-onenote" do
  version "16.103.25110922"
  sha256 "96841d7b700425dbcd65703808c5f8a9f324ca065bd90b343081fb4233f3ced5"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_OneNote_#{version}_Updater.pkg"
  name "Microsoft OneNote"
  desc "Digital note taking app"
  homepage "https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app"

  livecheck do
    cask "microsoft-office"
  end

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on macos: ">= :monterey"

  pkg "Microsoft_OneNote_#{version}_Updater.pkg"

  uninstall pkgutil: "com.microsoft.package.Microsoft_OneNote.app",
            delete:  "/Applications/Microsoft OneNote.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.onenote.mac*",
    "~/Library/Containers/com.microsoft.onenote.mac*",
  ]
end
