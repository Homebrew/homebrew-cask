cask "4k-slideshow-maker" do
  version "1.8.1.1029"
  sha256 "c3a1d2af0d5247c09e9bfb2c1ec55ab78d06cff9c84c080e513684433655c85d"

  url "https://dl.4kdownload.com/app/4kslideshowmaker_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K Slideshow Maker"
  homepage "https://www.4kdownload.com/products/product-slideshowmaker"

  depends_on macos: ">= :sierra"

  app "4K Slideshow Maker.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist",
    "~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState",
  ]
end
