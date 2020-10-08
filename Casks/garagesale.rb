cask "garagesale" do
  version "8.2"
  sha256 "ce13d8c96d6d38afcbc517e1d09c0fc926eff3813763f9d3dd90da95b78f9a30"

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageSale/Downloads.html#VersionHistory"
  name "GarageSale"
  homepage "https://www.iwascoding.com/GarageSale/"

  depends_on macos: ">= :sierra"

  app "GarageSale.app"
end
