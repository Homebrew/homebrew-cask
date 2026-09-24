cask "garagesale" do
  version "9.9.6"
  sha256 "40ab7329e59279eda90c185f5df643e1286b52ce7e8e40fa4e9bfe36c5b8862e"

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
