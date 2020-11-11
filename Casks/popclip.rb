cask "popclip" do
  version "2020.10"
  sha256 "c968666b645d96aa93b30391b27d68384b6bc26af58147809f78904641876443"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  appcast "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

  depends_on macos: ">= :sierra"

  app "PopClip.app"
end
