cask "garagebuy" do
  version "3.5.3"
  sha256 "da6d5de29c3593336ea62a0d7a10a134213bb659b2deee833ee1922e188ed3ea"

  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg",
      verified: "iwascoding.de/"
  name "GarageBuy"
  desc "App to assist with finding, tracking, and purchasing items on eBay"
  homepage "https://www.iwascoding.com/GarageBuy/"

  livecheck do
    url "https://www.iwascoding.com/GarageBuy/Downloads.html"
    strategy :page_match
    regex(%r{href=.*?/GarageBuy_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
