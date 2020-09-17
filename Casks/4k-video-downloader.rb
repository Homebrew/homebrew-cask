cask "4k-video-downloader" do
  version "4.13.1.3840"
  sha256 "8f04d750e867677a9b0fa7e8d6d19c825e0318f435d3debade14defd995c471d"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
