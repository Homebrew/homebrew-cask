cask "querious" do
  version "3.0.8"
  sha256 "34ea7b387f1d8238a8f5c1ae1726484f0a31e14d73eedd4458a15b5d23ac0e6e"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
  name "Querious #{version.major}"
  homepage "https://www.araelium.com/querious/"

  auto_updates true

  app "Querious.app"
end
