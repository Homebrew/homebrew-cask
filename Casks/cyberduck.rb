cask "cyberduck" do
  version "7.7.1.33788"
  sha256 "4a8d05abe9fb599ad1d551eb396f0c4dbda7be24ed71b34109afe6eb8a44d9b1"

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
