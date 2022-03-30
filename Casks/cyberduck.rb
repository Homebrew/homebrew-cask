cask "cyberduck" do
  version "8.3.0,37309"
  sha256 "da992c3d1082166d3f780c73cc0dd62fa3450a00c502df954f7e6c3886ef1b5e"

  url "https://update.cyberduck.io/Cyberduck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

  livecheck do
    url "https://version.cyberduck.io/changelog.rss"
    strategy :sparkle
  end

  auto_updates true

  app "Cyberduck.app"

  zap trash: [
    "~/Library/Application Support/Cyberduck",
    "~/Library/Caches/ch.sudo.cyberduck",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Preferences/ch.sudo.cyberduck.plist",
    "~/Library/Saved Application State/ch.sudo.cyberduck.savedState",
  ]
end
