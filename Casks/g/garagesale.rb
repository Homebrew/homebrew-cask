cask "garagesale" do
  version "10.2"
  sha256 "99d37e48537876531dfb7285d4a14b7c2a5d15acf83b068d9f9d89eddd493ea8"

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
