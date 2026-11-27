cask "4k-video-downloader+" do
  arch arm: "arm64", intel: "x64"

  version "26.4.1"
  sha256 arm:   "743c7fdd25082a5fc57694b2ca96d710fb4e01ab567ba9e00aadd15731619b01",
         intel: "4189c83e40136b0a81c13643e591492dde584df3b9b7e278dc0ea98a582ce86a"

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
