cask "kindle-previewer" do
  version "3.58"
  sha256 :no_check

  url "https://kindlepreviewer3.s3.amazonaws.com/KindlePreviewerInstaller.pkg",
      verified: "kindlepreviewer3.s3.amazonaws.com/"
  name "Kindle Previewer"
  desc "Preview and audit Kindle eBooks"
  homepage "https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Kindle\s*Previewer\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "KindlePreviewerInstaller.pkg"

  uninstall launchctl: "com.amazon.KindlePreviewerUpdater",
            pkgutil:   "Amazon.Kindle.Previewer.pkg"

  zap trash: [
    "/Library/LaunchDaemons/com.amazon.KindlePreviewerUpdater.plist",
    "~/.kindle",
  ]
end
