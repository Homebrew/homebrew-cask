cask "sidenotes" do
  version "1.2.1"
  sha256 "59ea38805bc91cc4b1a2b5cd5ed576f69a891ca2a1c8be7b6a4503a15e56fc31"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
