cask "cyberduck" do
  version "8.0.0,36226"
  sha256 "6736aa710dc9c1e58e245735493f631f0a4a739e2dd321638bdfaddc97591224"

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
