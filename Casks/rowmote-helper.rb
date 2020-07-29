cask "rowmote-helper" do
  version "4.2.3"
  sha256 "08a6803c66e55032252a2f946316cdff99f81f168a6c2e12f724ad37ffef1373"

  url "https://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast "https://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml"
  name "Rowmote Helper"
  homepage "https://regularrateandrhythm.com/apps/rowmote-pro/"

  auto_updates true

  app "Rowmote Helper.app"
end
