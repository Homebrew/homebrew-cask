cask "cyberduck" do
  version "9.5.3,45464"
  sha256 "b53092b7b7057d9782c093839bc47b19afd0987b23d7252bae435078f3e47e28"

  url "https://update.cyberduck.io/Cyberduck-#{version.csv.first}.#{version.csv.second}.zip"
  name "Cyberduck"
  desc "Server and cloud storage browser"
  homepage "https://cyberduck.io/"

  livecheck do
    url "https://version.cyberduck.io/changelog.rss"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Cyberduck.app"

  zap trash: [
    "~/Library/Application Support/Cyberduck",
    "~/Library/Caches/ch.sudo.cyberduck",
    "~/Library/Group Containers/G69SCX94XU.duck",
    "~/Library/HTTPStorages/ch.sudo.cyberduck",
    "~/Library/Logs/Cyberduck",
    "~/Library/Preferences/ch.sudo.cyberduck.plist",
    "~/Library/Saved Application State/ch.sudo.cyberduck.savedState",
  ]
end
