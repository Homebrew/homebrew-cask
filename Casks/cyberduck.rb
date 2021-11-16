cask "cyberduck" do
  version "8.0.2,36345"
  sha256 "6ef60c1a2fcc32d7e16fa52f0cbb15360d3df2fad938dd271aea22270028d39f"

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
