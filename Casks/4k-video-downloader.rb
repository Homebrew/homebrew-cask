cask "4k-video-downloader" do
  version "4.13.3"
  sha256 "255aa19acb532bcd2485720e43171b15e05a71d448df864a268c86b99715cc8b"

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Video Downloader"
  desc "Free video downloader"
  homepage "https://www.4kdownload.com/products/product-videodownloader"

  depends_on macos: ">= :sierra"

  app "4K Video Downloader.app"
end
