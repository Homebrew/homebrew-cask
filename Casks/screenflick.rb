cask "screenflick" do
  version "2.7.56"
  sha256 "8884ff8119407753eb52c84816c66d2ba86c12d3cf81891a08c804f8024f5f30"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  app "Screenflick.app"
end
