cask "powder" do
  version "MAJOR_VERSION,FULL_VERSION"
  sha256 :no_check

  url "https://powdertoy.co.uk/Download/powder-mac32.dmg"
  appcast "https://powdertoy.co.uk/"
  name "Powder Toy"
  homepage "https://powdertoy.co.uk/"

  app "Powder.app"
end
