cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.4.0"
  sha256 arm:   "0e658d930fddc71af46456a51de6290601d03f59716f61e79ee8c2a7da7bf35c",
         intel: "0c8daf015cf6ed5c31db2f7f0e0c1e3d913dfe8d52dc6331bdc89f12451a69b2"

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

  uninstall quit: "com.openmedia.4kvideodownloaderplus"

  zap trash: [
    "~/Library/Application Support/4kdownload.com/4K Video Downloader+",
    "~/Library/Preferences/com.4kdownload.4K Video Downloader+.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Preferences/com.openmedia.4kvideodownloaderplus.plist",
    "~/Library/Saved Application State/com.openmedia.4kvideodownloaderplus.savedState",
  ]
end
