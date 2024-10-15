cask "microsoft-onenote" do
  version "16.90.24101387"
  sha256 "d9cd04507e06ed2b4f16612def7f673f1941aa2b823a202b37c522d7162f5e7a"

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
