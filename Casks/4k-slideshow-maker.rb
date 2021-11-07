cask "4k-slideshow-maker" do
  version "2.0.0"
  sha256 "70653289082098b9d39844f42f8b843e8b545afa93da2a3f36ea3fa263bbb389"

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
end
