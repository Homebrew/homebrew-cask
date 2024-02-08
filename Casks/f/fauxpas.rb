cask "fauxpas" do
  version "1.7.2"
  sha256 "4db3fb5d6f84fedc7416b66ba67ce0d0849d57302734d7facf0d59b5b615f365"

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  name "Faux Pas"
  homepage "http://fauxpasapp.com/"

  livecheck do
    url "http://files.fauxpasapp.com/appcast.xml"
    strategy :sparkle
  end

  app "FauxPas.app"
end
