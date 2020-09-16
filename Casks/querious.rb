cask "querious" do
  version "3.0.5"
  sha256 "a2a97a15131b9fde640c9b92515cb24b38f939a75e793c28be747543caad44cd"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  auto_updates true

  app "Querious.app"
end
