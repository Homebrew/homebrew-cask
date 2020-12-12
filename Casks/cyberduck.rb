cask "cyberduck" do
  version "7.7.2.33862"
  sha256 "3becbea9d43261e8b8ddc139164c5744bb5535602bf994d400aedf8767fc1f44"

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast "https://version.cyberduck.io/changelog.rss"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

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
