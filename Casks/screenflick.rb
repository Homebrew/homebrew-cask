cask "screenflick" do
  version "2.7.55"
  sha256 "d046738727109f99eba8c4f164ae795dca18edd36f3a6d165ba402683c9cdd4c"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  app "Screenflick.app"
end
