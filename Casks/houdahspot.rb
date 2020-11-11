cask "houdahspot" do
  version "5.1.6"
  sha256 "94dac1d838cabcd0bebb46d672ec9b8514bb01f0316b03ce953086be10ed8539"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  depends_on macos: ">= :high_sierra"

  app "HoudahSpot.app"
end
