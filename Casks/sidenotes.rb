cask "sidenotes" do
  version "1.2.7,107"
  sha256 "f0f9af6b1bec5ab9401086876176cac9df0005b9dd4d95d1d142e9344e9dd230"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version.before_comma}.zip"
  name "SideNotes"
  desc "Note-taking application"
  homepage "https://www.apptorium.com/sidenotes"

  livecheck do
    url "https://www.apptorium.com/updates/sidenotes"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SideNotes.app"
end
