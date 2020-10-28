cask "querious" do
  version "3.0.6"
  sha256 "c552e0f0accdcd9736d68d35fa26ab0942ee374cee029761c28d6b7cede3818c"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  auto_updates true

  app "Querious.app"
end
