cask "garagesale" do
  version "9.7.3"
  sha256 "52631882b32ac54ca3ce6db8f109e03314d03b31f4cad2213b9e50cc93f7918f"

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
