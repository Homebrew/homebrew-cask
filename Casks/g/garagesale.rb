cask "garagesale" do
  version "9.8.3"
  sha256 "bdb99766229c5199914e92c382029a5d3e364af798dd686997987988a278d6b1"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name "GarageSale"
  desc "Manage eBay Listings"
  homepage "https://www.iwascoding.com/GarageSale/"

  livecheck do
    url "https://www.iwascoding.com/GarageSale/Downloads.html"
    regex(/href=.*?GarageSale[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "GarageSale.app"

  zap trash: [
    "~/Library/Application Scripts/com.iwascoding.garagesale*",
    "~/Library/Caches/com.apple.helpd/Generated/com.iwascoding.garagesale*",
    "~/Library/Containers/com.iwascoding.garagesale*",
  ]
end
