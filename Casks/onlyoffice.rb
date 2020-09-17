cask "onlyoffice" do
  version "5.6.4"
  sha256 "cf9eca26f77a84c061681d51788c2059b2b0f5ca98ccb66c8bd86c781ecf8691"

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast "https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml"
  name "ONLYOFFICE"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
