cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.1.5"
  sha256 arm:   "1200f1549e1dda7fcd182bc1e29f1823ef1f251405c2d15722f108225f280611",
         intel: "b754a7856f0eb926c6764ff68e2b73265a320f06d4858d8c0e9d119ca1226053"

  url "https://dl.4kdownload.com/app/4kvideodownloaderplus_#{version}_#{arch}.dmg"
  name "4K Video Downloader Plus"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/videodownloader"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(%r{href=.*?/4kvideodownloaderplus[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :monterey

  app "4K Video Downloader+.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Video Downloader+",
    "~/Library/Preferences/com.4kdownload.4K Video Downloader+.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Preferences/com.openmedia.4kvideodownloaderplus.plist",
    "~/Library/Saved Application State/com.openmedia.4kvideodownloaderplus.savedState",
  ]
end
