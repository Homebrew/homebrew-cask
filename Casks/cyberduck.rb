cask "cyberduck" do
  version "7.5.1.33324"
  sha256 "44112a68b68b1f2e4636c9e8666d5456573369391bfce91fef2bc619dfacb977"

  url "https://update.cyberduck.io/Cyberduck-#{version}.zip"
  appcast "https://version.cyberduck.io/changelog.rss"
  name "Cyberduck"
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
