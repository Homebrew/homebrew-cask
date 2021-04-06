cask "sidenotes" do
  version "1.2.7"
  sha256 "f0f9af6b1bec5ab9401086876176cac9df0005b9dd4d95d1d142e9344e9dd230"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
