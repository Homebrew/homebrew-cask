cask "houdahspot" do
  version "6.0"
  sha256 "4989462868d8a74bd20f17040e0f899d9ae8899de6b3cfd8b1364cd33722d8f8"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  depends_on macos: ">= :mojave"

  app "HoudahSpot.app"
end
