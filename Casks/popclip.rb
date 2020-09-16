cask "popclip" do
  version "2019.10"
  sha256 "052cb6d24d1060fcc133837603c8d48bc937f3c0d9ad34eea6f695aedffb50e4"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  appcast "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://pilotmoon.com/popclip/"

  depends_on macos: ">= :sierra"

  app "PopClip.app"
end
