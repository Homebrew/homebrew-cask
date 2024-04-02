cask "kindle-previewer" do
  version "3.79.0"
  sha256 :no_check

  url "https://d2bzeorukaqrvt.cloudfront.net/KindlePreviewerInstaller.pkg",
      verified: "d2bzeorukaqrvt.cloudfront.net/"
  name "Kindle Previewer"
  desc "Preview and audit Kindle eBooks"
  homepage "https://kdp.amazon.com/en_US/help/topic/G202131170"

  livecheck do
    url "https://s3.amazonaws.com/kindlepreviewer/UG_ReleaseNotes_EN.txt"
    regex(/Kindle\sPreviewer\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  pkg "KindlePreviewerInstaller.pkg"

  uninstall launchctl: "com.amazon.KindlePreviewerUpdater",
            pkgutil:   "Amazon.Kindle.Previewer.pkg",
            delete:    "/Library/LaunchDaemons/com.amazon.KindlePreviewerUpdater.plist"

  zap trash: "~/.kindle"
end
