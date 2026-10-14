cask "garagesale" do
  version "10.1"
  sha256 "d6ef18fb1abb38de6db994e6ef353962077d91a91ce7b9ced208454f7dc5260a"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name "GarageSale"
  desc "Manage eBay Listings"
  homepage "https://www.iwascoding.com/GarageSale/"

  livecheck do
    url "https://www.iwascoding.com/GarageSale/Downloads.html"
    regex(/href=.*?GarageSale[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "GarageSale.app"

  uninstall quit: "com.iwascoding.garagesale#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/com.iwascoding.garagesale*",
    "~/Library/Caches/com.apple.helpd/Generated/com.iwascoding.garagesale*",
    "~/Library/Containers/com.iwascoding.garagesale*",
  ]
end
