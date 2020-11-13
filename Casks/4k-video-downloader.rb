cask "4k-video-downloader" do
  version "4.13.4"
  sha256 "d3e79c7a7ef526747bdb4782c942ce07075a4acbd913b9a945fe6cc5d7f734b7"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
