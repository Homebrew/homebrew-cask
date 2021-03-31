cask "cyberduck" do
  version "7.8.5,34493"
  sha256 "bc5f3e347e63d9b5bef84333c2ef2e333df516f943b02c07846c359fa621ea05"

  url "https://update.cyberduck.io/Cyberduck-#{version.before_comma}.#{version.after_comma}.zip"
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
