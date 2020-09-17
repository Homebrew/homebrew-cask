cask "screenflick" do
  version "2.7.52"
  sha256 "e7920e04cd1b3f583daa6a8e6d82af1aaf23a9e5f8ce5258c7d0e2c2177adfa5"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  app "Screenflick.app"
end
