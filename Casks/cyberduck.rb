cask "cyberduck" do
  version "7.6.0.33437"
  sha256 "a5a01bc8b4ccec0fe62b06db62b1910fa586357c5ff7a5fdcfa93424db726729"

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
