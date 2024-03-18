cask "garagesale" do
  version "9.7.2"
  sha256 "c588bb0e7fee4f37d075a00fe3c38d4e1bd68206d87e50f8496258be1c65f664"

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
