cask "4k-video-downloader" do
  version "4.13.2.3860"
  sha256 "5b57098b45b930e17053f949b5f667c90f9f2716483f01596682f055fe54fd64"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
