cask "dragthing" do
  version "5.9.17"
  sha256 "62d553878267d617aa2be48f09dfc401d08afce216cd42aef7441f4f95dd4cff"

  # tlasystems.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://tlasystems.s3.amazonaws.com/DragThing-#{version}.dmg"
  appcast "https://www.dragthing.com/english/download.html"
  name "DragThing"
  desc "Desktop organizer"
  homepage "https://www.dragthing.com/"

  app "DragThing.app"
end
