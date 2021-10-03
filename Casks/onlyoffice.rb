cask "onlyoffice" do
  version "6.4.1"
  sha256 "5c6601f30bf68cca09a906d7426236d4ec6e0381eca93f459088c4c78c42986d"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
