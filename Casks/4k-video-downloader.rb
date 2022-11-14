cask "4k-video-downloader" do
  version "4.22.1"
  sha256 "edf4f8b8d065b73e81c9dc3a056b4237f6ac1d9b006ca34f76de15cf06b7bd40"

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
  ]
end
