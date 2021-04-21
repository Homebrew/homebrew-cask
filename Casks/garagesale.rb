cask "garagesale" do
  version "8.3.6"
  sha256 "41293e94abcf8e0aa07957045de59b3ba25abe6adb7a1866cab91a0be3d204f2"

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
