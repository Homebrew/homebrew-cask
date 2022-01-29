cask "garagesale" do
  version "8.4.1"
  sha256 "5252c0301120bf26a0d81359bc255d5b24da4542fd406c0f25fb025f3a8c585b"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name "GarageSale"
  desc "Manage eBay Listings"
  homepage "https://www.iwascoding.com/GarageSale/"

  livecheck do
    url "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
    regex(%r{href=.*?/GarageSale_(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "GarageSale.app"
end
