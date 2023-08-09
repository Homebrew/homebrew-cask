cask "garagesale" do
  version "9.4"
  sha256 "8ad76f58524b0bb4f0bd0d3b9ad5be9b76eebae40ba1295bbb4383a14d3d262d"

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
