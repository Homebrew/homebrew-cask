cask "cyberduck" do
  version "7.6.1.33485"
  sha256 "d4e62f2475762e4200a753c4db9632ed88ecddd6f0bd06a198db24b755120816"

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
