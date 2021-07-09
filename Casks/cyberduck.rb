cask "cyberduck" do
  version "7.10.0,35184"
  sha256 "e3055e1ca17bfcc2ff824626d6da697c944a22b978fcd3517d0d56a58b08ae73"

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
