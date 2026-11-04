cask "microsoft-onenote" do
  version "16.114.26110224"
  sha256 "7c2d3d35c011d63ef8dced8b5370fcf31eb6f1899cba9e682571fcb3559a12c4"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_OneNote_#{version}_Updater.pkg"
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
  depends_on macos: :sonoma

  pkg "Microsoft_OneNote_#{version}_Updater.pkg"

  uninstall pkgutil: "com.microsoft.package.Microsoft_OneNote.app",
            delete:  "/Applications/Microsoft OneNote.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.onenote.mac*",
    "~/Library/Containers/com.microsoft.onenote.mac*",
  ]
end
