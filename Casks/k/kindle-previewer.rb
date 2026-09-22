cask "kindle-previewer" do
  version "4.0.1"
  sha256 :no_check

  url "https://d2bzeorukaqrvt.cloudfront.net/KPR#{version.major}/KindlePreviewer#{version.major}.pkg"
  name "Kindle Previewer"
  desc "Preview and audit Kindle eBooks"
  homepage "https://kdp.amazon.com/en_US/help/topic/G202131170"

  livecheck do
    url "https://kindlepreviewer.s3.amazonaws.com/UG_ReleaseNotes_EN.txt"
    regex(/Kindle\sPreviewer\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  pkg "KindlePreviewer#{version.major}.pkg"

  uninstall pkgutil: "com.amazon.kpr#{version.major}"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.amazon.kpr#{version.major}",
    "~/Library/Application Support/com.amazon.kpr#{version.major}",
    "~/Library/Application Support/Kindle Previewer #{version.major}",
    "~/Library/Caches/bugsnag-shared-com.amazon.kpr#{version.major}",
    "~/Library/Caches/com.amazon.kpr#{version.major}",
    "~/Library/HTTPStorages/com.amazon.kpr#{version.major}",
    "~/Library/Preferences/com.amazon.kpr#{version.major}.plist",
  ]
end
