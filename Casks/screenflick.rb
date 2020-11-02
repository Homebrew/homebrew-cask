cask "screenflick" do
  version "2.7.54"
  sha256 "ac600a4294b65ae26ca5ca32465adbfa6c5036608f633830f55abcfa2bf39752"

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/updates.json"
  name "Screenflick"
  homepage "https://www.araelium.com/screenflick/"

  app "Screenflick.app"
end
