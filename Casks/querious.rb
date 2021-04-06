cask "querious" do
  version "3.0.9"
  sha256 "e22b4618207812162499d8cdcce5d9912c9d61ecaca328df1117a06acab83aea"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  auto_updates true

  app "Querious.app"
end
