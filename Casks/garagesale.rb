cask "garagesale" do
  version "8.3.3"
  sha256 "6d962041b64b924fae7cbb69d1ba8bccc543dffbb2f5855740bad801e5595f1c"

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
