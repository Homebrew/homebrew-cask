cask "evom" do
  version "1.0.2"
  sha256 :no_check

  url "http://files.thelittleappfactory.com/evom/Evom.zip"
  name "Evom"
  homepage "http://thelittleappfactory.com/evom/"

  livecheck do
    url "http://files.thelittleappfactory.com/evom/appcast.xml"
    strategy :sparkle
  end

  app "Evom.app"
end
