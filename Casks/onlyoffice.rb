cask "onlyoffice" do
  version "5.6"
  sha256 "e077a7b6b4ec642e24817dffdfafb48efb9d069fa340677a853bfa29dd5488f0"

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast "https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml"
  name "ONLYOFFICE"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
