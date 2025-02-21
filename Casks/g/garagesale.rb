cask "garagesale" do
  version "9.9.1"
  sha256 "b2f4e7afe582d4c66a10034fa70afe322be045e9ccac74e94cd544d8ce1698f1"

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
