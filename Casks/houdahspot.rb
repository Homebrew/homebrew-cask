cask "houdahspot" do
  version "5.1.5"
  sha256 "d85cc83c1d2c05609aba4359704798c87fb6c6f6f0843477c9b56854e97645fc"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  depends_on macos: ">= :high_sierra"

  app "HoudahSpot.app"
end
