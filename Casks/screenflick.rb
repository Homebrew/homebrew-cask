cask "screenflick" do
  version "2.7.52"
  sha256 "fdccfa2d9a25e0f2cf77006ac6c0ff960d62785b6dae536030d88257628ef486"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  app "Screenflick.app"
end
