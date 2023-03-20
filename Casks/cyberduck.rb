cask "cyberduck" do
  version "8.5.6,39394"
  sha256 "62938e25c8b1b85a6a83f80972a15c0e5a830d01beac4c2f1ad20e67dec8ff1a"

  url "https://update.cyberduck.io/Cyberduck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

  livecheck do
    url "https://version.cyberduck.io/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Cyberduck.app"

  zap trash: [
    "~/Library/Application Support/Cyberduck",
    "~/Library/Caches/ch.sudo.cyberduck",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/Preferences/ch.sudo.cyberduck.plist",
    "~/Library/Saved Application State/ch.sudo.cyberduck.savedState",
  ]
end
