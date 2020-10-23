cask "sidenotes" do
  version "1.2.2"
  sha256 "5460bf265e36bba1eec12db42afd86d510ce472941396d8ffa425c8c270ba945"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  appcast "https://www.apptorium.com/updates/sidenotes"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
