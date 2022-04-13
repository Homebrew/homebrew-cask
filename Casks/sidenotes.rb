cask "sidenotes" do
  version "1.4.6,183"
  sha256 "9a6e7c828eeb888bda316ad64e1879012422a9d5511f2df4092ad32ea4195648"

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
