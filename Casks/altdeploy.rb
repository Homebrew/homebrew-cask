cask "altdeploy" do
  version "1.1"
  sha256 "c9f1c27e3c83022fe0fae7abe3ea825792bc799390d3fb5492f8cfb97a9d7f56"

  url "https://github.com/pixelomer/AltDeploy/releases/download/v#{version}/AltDeploy.zip"
  appcast "https://github.com/pixelomer/AltDeploy/releases.atom"
  name "AltDeploy"
  homepage "https://github.com/pixelomer/AltDeploy"

  app "AltDeploy.app"
end
