cask "invisor-lite" do
  version "3.14,914.201012"
  sha256 "fcfb2d2bfd1144dd877f60ff5de51f1631f90a0affcd5da83a510f7661cb28cd"

  url "https://www.invisorapp.com/download/InvisorLite-#{version.before_comma}.dmg"
  name "Invisor Lite"
  homepage "https://www.invisorapp.com/"

  livecheck do
    url "https://www.invisorapp.com/appcast_lite.xml"
    strategy :sparkle
  end

  app "Invisor Lite.app"
end
