cask "garagesale" do
  version "8.3.5"
  sha256 "2649969901f7e5a36321d591a97557fd6a5e86b13396342c31c79c0e6b3f834c"

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
