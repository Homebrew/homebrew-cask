cask "garagebuy" do
  version "3.4.1"
  sha256 "fcb7a7bad17990e9f19c94cfcfd3b3b24ff61c3652fdd2d9d41c249c7797257e"

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageBuy/Downloads.html"
  name "GarageBuy"
  homepage "https://www.iwascoding.com/GarageBuy/"

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
