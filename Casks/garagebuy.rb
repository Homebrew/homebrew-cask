cask "garagebuy" do
  version "3.5.2"
  sha256 "756e1607792ded59e25ffc2f5050f0b723e26036caec39f77411bad8a13202fe"

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageBuy/Downloads.html"
  name "GarageBuy"
  desc "App to assist with finding, tracking, and purchasing items on eBay"
  homepage "https://www.iwascoding.com/GarageBuy/"

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
