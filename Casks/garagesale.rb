cask "garagesale" do
  version "8.3.4"
  sha256 "1519620295eb2b0fde0400db7f4d21b6c7828665819ad5d4e7362a720abca2d9"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name "GarageSale"
  homepage "https://www.iwascoding.com/GarageSale/"

  livecheck do
    url "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
    strategy :page_match
    regex(%r{href=.*?/GarageSale_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "GarageSale.app"
end
