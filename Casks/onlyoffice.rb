cask "onlyoffice" do
  version "6.0.2"
  sha256 "1305a226cb4fea5e1a3ff84e8846caf3d3d220788dd4a5c46a7b28a6e2441f74"

  # github.com/ONLYOFFICE/DesktopEditors/ was verified as official when first introduced to the cask
  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-#{version}/ONLYOFFICE.dmg"
  appcast "https://github.com/ONLYOFFICE/DesktopEditors/releases.atom"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
