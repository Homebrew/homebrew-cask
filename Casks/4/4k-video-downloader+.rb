cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.3.3"
  sha256 arm:   "25e1d4f6970434143c3d4fc16a8cfa5df8a45def5c8d9890cb54a2f13c922621",
         intel: "6704ce3cfc2e5c0deab542e3cf590acfa49f09514ab0592f82a939dbb73b952a"

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
