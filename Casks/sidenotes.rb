cask "sidenotes" do
  version "1.3.1,138"
  sha256 "c7e80ffb25fe2d4b35857af683c95f1491b8b19d7f78a63f8363dc034554231b"

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
