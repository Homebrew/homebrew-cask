cask "garagesale" do
  version "9.0.3"
  sha256 "36184d5313b7187e7e819c8dc43b00e11b55252959f7c6f485b8e663507c59c0"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name "GarageSale"
  desc "Manage eBay Listings"
  homepage "https://www.iwascoding.com/GarageSale/"

  livecheck do
    url "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
    regex(%r{href=.*?/GarageSale[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "GarageSale.app"

  zap trash: [
    "~/Library/Application Scripts/com.iwascoding.garagesale8",
    "~/Library/Caches/com.apple.helpd/Generated/com.iwascoding.garagesale8.help*8.4",
    "~/Library/Containers/com.iwascoding.garagesale8",
  ]
end
