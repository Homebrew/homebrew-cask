cask "sidenotes" do
  version "1.4.5,179"
  sha256 "5b16a7125235b218085044cecfdf72a29adcd6923274af493feb8ea02e547865"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version.csv.first}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "SideNotes.app"
end
