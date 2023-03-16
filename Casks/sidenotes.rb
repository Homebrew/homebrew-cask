cask "sidenotes" do
  version "1.4.10"
  sha256 "80fa102394e03ebe1d466afce1d5f50dd02bef7fbb54308c60e7726ec7cdc342"

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
