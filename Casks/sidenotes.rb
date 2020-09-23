cask "sidenotes" do
  version "1.2"
  sha256 "125272bb768c9e798a29824c4eb8d10e691a54020a5ec6b15605601b48e19288"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
