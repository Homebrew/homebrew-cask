cask "sidenotes" do
  version "1.4.9"
  sha256 "3d897bb794bc7b1fa46a20aef46709797f158d2a41b057ccd0a97c48f03d9bf4"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "SideNotes.app"
end
