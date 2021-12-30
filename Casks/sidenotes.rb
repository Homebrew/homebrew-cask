cask "sidenotes" do
  version "1.4.3,167"
  sha256 "676da676ed9f92e34c27c920860eab5504fc561979c11394a2fcea1db4267338"

  url "https://www.apptorium.com/public/products/sidenotes/releases/SideNotes-#{version.csv.first}.zip"
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
