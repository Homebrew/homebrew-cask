cask "4k-video-downloader" do
  version "4.14.0"
  sha256 "facd39f1e66e20092fecbf367d871ea8a0b2c5daf81cf6f7c9a9859c5019ba68"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
