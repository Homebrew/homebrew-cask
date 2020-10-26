cask "sidenotes" do
  version "1.2.3"
  sha256 "8c822037c29b3318f2b70345eec1b0542e5d5b083055922d1107e013bb3137ca"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
