cask "4k-video-downloader" do
  version "4.13.5"
  sha256 "a6f546af1f2a987d89253546aef3da312d382774f32ae042eaa2da9570f8111e"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
