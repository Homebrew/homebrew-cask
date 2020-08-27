cask "garagebuy" do
  version "3.4.2"
  sha256 "bf274c032c958f712f674558f437e458fea89bfff5c90d01791aa6c82fcf0707"

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageBuy/Downloads.html"
  name "GarageBuy"
  homepage "https://www.iwascoding.com/GarageBuy/"

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
