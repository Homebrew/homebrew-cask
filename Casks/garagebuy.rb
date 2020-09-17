cask "garagebuy" do
  version "3.5.1"
  sha256 "d319a0a45cf72045f24dda3d3f650cdab7f7a055718673db580263e2073e9851"

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageBuy/Downloads.html"
  name "GarageBuy"
  desc "App to assist with finding, tracking, and purchasing items on eBay"
  homepage "https://www.iwascoding.com/GarageBuy/"

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
