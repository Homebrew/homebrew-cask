cask "houdahspot" do
  version "6.0"
  sha256 "649e6db7eaef750abcdb2f9d256cd0f69b48ef0d2f384eceb997e6859587a07e"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  depends_on macos: ">= :high_sierra"

  app "HoudahSpot.app"
end
