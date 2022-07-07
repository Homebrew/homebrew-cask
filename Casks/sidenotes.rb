cask "sidenotes" do
  version "1.4.7,188"
  sha256 "fb0e3dd5c54eb0e2005bf9d6b7293aa41a3516ef40e42c5ff9240da2cee062e5"

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
