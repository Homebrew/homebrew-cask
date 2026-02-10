cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.0.2"
  sha256 arm:   "634d42cf3784f1b0ada3a0e160183784951a06707dc175c9b6819aa7fdfa2d9e",
         intel: "4673a48363ec7a4523dd6fd550b81eca5b6655ef133d83d16e4edf3ce6a5c3f5"

  url "https://dl.4kdownload.com/app/4kvideodownloaderplus_#{version}_#{arch}.dmg"
  name "4K Video Downloader Plus"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/videodownloader"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kvideodownloaderplus[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :monterey"

  app "4K Video Downloader+.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Video Downloader+",
    "~/Library/Preferences/com.4kdownload.4K Video Downloader+.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Preferences/com.openmedia.4kvideodownloaderplus.plist",
    "~/Library/Saved Application State/com.openmedia.4kvideodownloaderplus.savedState",
  ]
end
