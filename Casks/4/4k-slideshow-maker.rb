cask "4k-slideshow-maker" do
  version "2.0.1"
  sha256 "4761cf9ebfde489f5aef14a2f6f28064111f0729d15246a97fb06fcde8666e67"

  url "https://dl.4kdownload.com/app/4kslideshowmaker_#{version}.dmg"
  name "4K Slideshow Maker"
  desc "Slideshow maker"
  homepage "https://www.4kdownload.com/products/product-slideshowmaker"

  livecheck do
    url "https://www.4kdownload.com/downloads"
    regex(/href=.*?4kslideshowmaker[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K Slideshow Maker.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist",
    "~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
