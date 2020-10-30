cask "querious" do
  version "3.0.7"
  sha256 "a80cc359deac966a03d4aa3ed38fec1d09338284164432fc07d61aadb4388158"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  auto_updates true

  app "Querious.app"
end
