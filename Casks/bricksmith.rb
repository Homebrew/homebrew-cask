cask "bricksmith" do
  version "3.0"
  sha256 "bf7dcd7508d2d6e37f6079080e8ae51095e14d05eb507ad85ac4bbaf5b9ae7c5"

  # downloads.sourceforge.net/bricksmith/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/bricksmith/bricksmith/Bricksmith%20#{version}/BricksmithComplete#{version}.zip"
  appcast "https://bricksmith.sourceforge.io/files/bricksmith_appcast.xml"
  name "Bricksmith"
  homepage "https://bricksmith.sourceforge.io/"

  app "Bricksmith/Bricksmith.app"
end
