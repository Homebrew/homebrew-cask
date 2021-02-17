cask "4k-video-downloader" do
  version "4.14.3"
  sha256 "791780069ae180afa864f251cc75bd942e77a3c237d95b3c390331f3145f7769"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
