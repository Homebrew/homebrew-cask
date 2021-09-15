cask "onlyoffice" do
  version "6.3.1"
  sha256 "7c86ad461c070eca13427b312c7a5d961e95652f48bd732821f24d0f62d73044"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
