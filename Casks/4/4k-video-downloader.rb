cask "4k-video-downloader" do
  version "4.32.5"
  sha256 "d7c8248e34f11b1e376de1836f3a3c54a206439e6fb01739ac53ddadef780994"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}_x64.dmg"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kvideodownloader[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
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

  caveats do
    requires_rosetta
  end
end
