cask "4k-video-downloader" do
  version "4.13.0.3800"
  sha256 "cf6f195841f5657061bf100f8a2da64c8380a6f95b45d58a13ffc0fc9c4bbc0f"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
