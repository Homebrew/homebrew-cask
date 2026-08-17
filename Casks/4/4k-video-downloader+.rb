cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.3.1"
  sha256 arm:   "9b9843c2a08b05948ca52b924091fec3667f50867c9beca9f32212d252a79874",
         intel: "ed79727fd9a6e778882e85dbc8c9f7fa7c60b9ae6c12c4f50286c972d475161e"

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
