cask "coconutid" do
  version "3.4"
  sha256 "f6a07574bc756f9f35cbc13e65a7220f8e082dc847ff78d5895b7624324a0fdb"

  url "https://www.coconut-flavour.com/downloads/coconutID_#{version}.zip"
  appcast "https://www.coconut-flavour.com/updates/coconutID.xml"
  name "coconutID"
  desc "Shows a Macs or iPhones manufacturing date"
  homepage "https://www.coconut-flavour.com/coconutid/"

  auto_updates true

  app "coconutID.app"
end
