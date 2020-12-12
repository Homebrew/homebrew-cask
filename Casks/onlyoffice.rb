cask "onlyoffice" do
  version "6.1.0"
  sha256 "cb70d3eb81c3a93ef130243b3ccaf065c37cd024583453debdb32ec862fb4070"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  appcast "https://github.com/ONLYOFFICE/DesktopEditors/releases.atom"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
