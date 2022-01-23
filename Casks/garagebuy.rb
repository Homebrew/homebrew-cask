cask "garagebuy" do
  version "3.6"
  sha256 "00617c84593b56c2ad2f8b50ee863c2ac469610e2a199ab0ceee5831ea4eec3a"

  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg",
      verified: "iwascoding.de/downloads/"
  name "GarageBuy"
  desc "App to assist with finding, tracking, and purchasing items on eBay"
  homepage "https://www.iwascoding.com/GarageBuy/"

  livecheck do
    url "https://www.iwascoding.com/GarageBuy/Downloads.html"
    regex(%r{href=.*?/GarageBuy[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
