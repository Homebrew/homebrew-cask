cask "sidenotes" do
  version "1.4.8,211"
  sha256 "ce8ba6faa655deb3030c3efdc0388a1ff47c7e154e066fc9a9fd93c135b56c81"

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
