cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "25.4.2"
  sha256 arm:   "d6622b079a485e13880a25f45ba97b9b10e8adb577e940cb75571bf232883d71",
         intel: "1f78f609c1ff3e8cec65b0800abc1919f651e3fcbde9f7b22ed10509a33b2517"

  url "https://dl.4kdownload.com/app/4kvideodownloaderplus_#{version}_#{arch}.dmg"
  name "4K Video Downloader Plus"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/videodownloader"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kvideodownloaderplus[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "4K Video Downloader+.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Video Downloader+",
    "~/Library/Preferences/com.4kdownload.4K Video Downloader+.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Preferences/com.openmedia.4kvideodownloaderplus.plist",
    "~/Library/Saved Application State/com.openmedia.4kvideodownloaderplus.savedState",
  ]
end
