cask "garagebuy" do
  version "3.5"
  sha256 "32b28e057a18e2b29e126843a868120e8dec2c5be3b0fddcdf79c62c07bf8c46"

  # iwascoding.de/ was verified as official when first introduced to the cask
  url "https://www.iwascoding.de/downloads/GarageBuy_#{version}.dmg"
  appcast "https://www.iwascoding.com/GarageBuy/Downloads.html"
  name "GarageBuy"
  homepage "https://www.iwascoding.com/GarageBuy/"

  depends_on macos: ">= :sierra"

  app "GarageBuy.app"
end
