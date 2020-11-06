cask "invisor-lite" do
  version "3.14"
  sha256 "fcfb2d2bfd1144dd877f60ff5de51f1631f90a0affcd5da83a510f7661cb28cd"

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast "https://www.invisorapp.com/appcast_lite.xml"
  name "Invisor Lite"
  homepage "https://www.invisorapp.com/"

  app "Invisor Lite.app"
end
