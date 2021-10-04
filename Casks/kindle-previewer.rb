cask "kindle-previewer" do
  version "3.58.0"
  sha256 :no_check

  url "https://d2bzeorukaqrvt.cloudfront.net/KindlePreviewerInstaller.pkg",
      verified: "d2bzeorukaqrvt.cloudfront.net/"
  name "Kindle Previewer"
  desc "Preview and audit Kindle eBooks"
  homepage "https://www.amazon.com/Kindle-Previewer/b?ie=UTF8&node=21381691011"

  livecheck do
    url "https://s3.amazonaws.com/kindlepreviewer/UG_ReleaseNotes_EN.txt"
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
