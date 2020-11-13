cask "sidenotes" do
  version "1.2.5"
  sha256 "77106e2835e512c9f80ae2718f8f6fcb5d143d77b3ca6b5593cec4dfc340c7bf"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
