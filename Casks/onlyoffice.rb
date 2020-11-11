cask "onlyoffice" do
  version "6.0.0"
  sha256 "d82c5623e814a3df939fa039945b76b38af35bdf0ce06f6da85cb94891a8e3f2"

  # github.com/ONLYOFFICE/DesktopEditors/ was verified as official when first introduced to the cask
  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/ONLYOFFICE-DesktopEditors-#{version}/ONLYOFFICE.dmg"
  appcast "https://github.com/ONLYOFFICE/DesktopEditors/releases.atom"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  auto_updates true

  app "ONLYOFFICE.app"
end
