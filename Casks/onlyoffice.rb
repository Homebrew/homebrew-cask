cask "onlyoffice" do
  version "6.0"
  sha256 "cbb4c94e62745f31d70da2dcfc84185f8926ae1bd49c3663755417bf45fd3381"

  url "https://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast "https://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml"
  name "ONLYOFFICE"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
