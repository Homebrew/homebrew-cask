cask "garagesale" do
  version "8.2.1"
  sha256 "46b6b3fcc6db3f39b74a202bed0a1c8e2db6b701f61f4f6bbdb94e3a85c2f05f"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
  name "GarageSale"
  homepage "https://www.iwascoding.com/GarageSale/"

  depends_on macos: ">= :sierra"

  app "GarageSale.app"
end
