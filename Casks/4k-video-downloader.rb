cask "4k-video-downloader" do
  version "4.14.2"
  sha256 "ced5edfe3c3aea2a099e21f2a60e997b07d54afdd56515c8d1b4ec2be3d3fb87"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
