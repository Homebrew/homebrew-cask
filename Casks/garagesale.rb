cask "garagesale" do
  version "8.3.2"
  sha256 "40c1bb6ef27c1838a391575c782cfe1fa67672719cebceb879c50cacb71c63e3"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
  name "GarageSale"
  homepage "https://www.iwascoding.com/GarageSale/"

  depends_on macos: ">= :sierra"

  app "GarageSale.app"
end
