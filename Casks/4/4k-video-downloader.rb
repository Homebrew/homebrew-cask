cask "4k-video-downloader" do
  version "4.29.0"
  sha256 "4dca19ffe523c42c209e382937d98f2f920c7864cacdc31c959be6de9c8c5a43"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kvideodownloader[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K Video Downloader.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Video Downloader",
    "~/Library/Preferences/com.4kdownload.4K Video Downloader.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Preferences/com.openmedia.4kvideodownloader.plist",
    "~/Library/Saved Application State/com.openmedia.4kvideodownloader.savedState",
  ]
end
