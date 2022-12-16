cask "garagesale" do
  version "9.1.1"
  sha256 "e3b4bd99fbf336ca3a37693567a49a67d878989954e4233195469642f2d4d9d1"

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
